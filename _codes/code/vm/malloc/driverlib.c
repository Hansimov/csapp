/*********************************************************************** 
 *
 * driverlib.c - A package of helper functions for C Autolab drivers
 *
 * Copyright (c) 2004, D. O'Hallaron, All rights reserved.  May not be
 * used, modified, or copied without permission.
 *
# $Id: driverlib.c,v 1.6 2006/11/21 03:44:23 autolab Exp $
 *********************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <netinet/in.h>
#include <signal.h>

#include "driverhdrs.h"
#include "driverlib.h"

/**************************
 * Private helper functions 
 **************************/

/*
 * sigalrm_handler - handles SIGALRM timeout signals
 */

void sigalrm_handler(int sig) {
    fprintf(stderr, "Program timed out after %d seconds\n", AUTOGRADE_TIMEOUT);
    exit(1);
}

/*
 * rio_readinitb - Associate a descriptor with a read buffer and reset buffer
 */
typedef struct sockaddr SA;
static void rio_readinitb(rio_t *rp, int fd) 
{
    rp->rio_fd = fd;  
    rp->rio_cnt = 0;  
    rp->rio_bufptr = rp->rio_buf;
}


/* 
 * rio_read - This is a wrapper for the Unix read() function that
 *    transfers min(n, rio_cnt) bytes from an internal buffer to a user
 *    buffer, where n is the number of bytes requested by the user and
 *    rio_cnt is the number of unread bytes in the internal buffer. On
 *    entry, rio_read() refills the internal buffer via a call to
 *    read() if the internal buffer is empty.
 */
static ssize_t rio_read(rio_t *rp, char *usrbuf, size_t n)
{
    int cnt;

    while (rp->rio_cnt <= 0) {  /* refill if buf is empty */
	rp->rio_cnt = read(rp->rio_fd, rp->rio_buf, 
			   sizeof(rp->rio_buf));
	if (rp->rio_cnt < 0) {
	    if (errno != EINTR) /* interrupted by sig handler return */
		return -1;
	}
	else if (rp->rio_cnt == 0)  /* EOF */
	    return 0;
	else 
	    rp->rio_bufptr = rp->rio_buf; /* reset buffer ptr */
    }

    /* Copy min(n, rp->rio_cnt) bytes from internal buf to user buf */
    cnt = n;          
    if (rp->rio_cnt < n)   
	cnt = rp->rio_cnt;
    memcpy(usrbuf, rp->rio_bufptr, cnt);
    rp->rio_bufptr += cnt;
    rp->rio_cnt -= cnt;
    return cnt;
}

/* 
 * rio_readlineb - robustly read a text line (buffered)
 */
static ssize_t rio_readlineb(rio_t *rp, void *usrbuf, size_t maxlen) 
{
    int n, rc;
    char c, *bufp = usrbuf;

    for (n = 1; n < maxlen; n++) { 
	if ((rc = rio_read(rp, &c, 1)) == 1) {
	    *bufp++ = c;
	    if (c == '\n')
		break;
	} else if (rc == 0) {
	    if (n == 1)
		return 0; /* EOF, no data read */
	    else
		break;    /* EOF, some data was read */
	} else
	    return -1;	  /* error */
    }
    *bufp = 0;
    return n;
}

/*
 * rio_writen - Robustly write n bytes (unbuffered)
 */
static ssize_t rio_writen(int fd, void *usrbuf, size_t n) 
{
    size_t nleft = n;
    ssize_t nwritten;
    char *bufp = usrbuf;

    while (nleft > 0) {
	if ((nwritten = write(fd, bufp, nleft)) <= 0) {
	    if (errno == EINTR)  /* interrupted by sig handler return */
		nwritten = 0;    /* and call write() again */
	    else
		return -1;       /* errorno set by write() */
	}
	nleft -= nwritten;
	bufp += nwritten;
    }
    return n;
}


/*
 * urlencode - URL-encodes the src input string into dst
 */
static int urlencode(unsigned char *src, unsigned char *dst)
{
    int len = strlen((char *)src);
    char buf[8];

    for ( ; len--; src++) {
	if ((*src == '*') || (*src == '-') || 
	    (*src== '.') || (*src == '_') || 
	    (('0' <= *src) && (*src <= '9')) || 
	    (('A' <= *src) && (*src <= 'Z')) || 
	    (('a' <= *src) && (*src <= 'z'))) {
	    *dst++ = *src;
	}
	else if (*src == ' ') {
	    *dst++ = '+';
	}

	/* 
	 * Allow only the printable ASCII characters Note: for a
	 * general purpose URL-encoding routine, we would also allow
	 * newline and form feeds, but since result submissions are
	 * constrained to be single text lines, we disallow them in this 
	 * context. However, tabs are allowd.
	 */
	else if (((*src > 31) && (*src < 128)) || 
		 (*src == '\t')) {
	    sprintf(buf, "%%%02X", *src);
	    *dst++ = buf[0];
	    *dst++ = buf[1];
	    *dst++ = buf[2];
	}
        else {
	    return -1;
        }
    }

    return 0;
}


/*
 * submitr - Submit a client result string to the autolab server.
 */
int submitr(char *hostname,    /* Server domain name */
	    int port,          /* Server port */
	    char *course,      /* Course name */
	    char *userid,      /* Userid */
	    char *lab,         /* Lab name */
	    char *result,      /* Result string to submit */
	    char *status_msg)  /* Status message returned to caller */
{
    int clientfd;                  /* socket descriptor */
    struct hostent *hp;            /* DNS host entry */
    struct sockaddr_in serveraddr; /* Server's socket address */

    size_t result_size;      /* Input result size in bytes */
    size_t req_size;         /* HTTP request size in bytes */
    rio_t rio;               /* Handle for buffered RIO functions */

    char buf[SUBMITR_MAXBUF];        /* Buffer for HTTP requests/responses */ 
    char enc_result[SUBMITR_MAXBUF]; /* Buffer for URL-encoded result string */

    char version[SUBMITR_MAXBUF];    /* Fields from first response line */
    int errcode=0;  
    char errmsg[SUBMITR_MAXBUF];

    /* Create the initial socket descriptor */
    if ((clientfd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
	strcpy(status_msg, "Error: Client unable to create socket");
	return -1;
    }
	
    /* Fill in the server's IP address and port */
    if ((hp = gethostbyname(hostname)) == NULL) {
	strcpy(status_msg, "Error: DNS is unable to resolve Autolab server address");
	close(clientfd);
	return -1;
    }
    bzero((char *) &serveraddr, sizeof(serveraddr));
    serveraddr.sin_family = AF_INET;
    bcopy((char *)hp->h_addr, 
	  (char *)&serveraddr.sin_addr.s_addr, hp->h_length);
    serveraddr.sin_port = htons(port);

    /* Establish a connection with the server */
    if (connect(clientfd, (SA *) &serveraddr, sizeof(serveraddr)) < 0) {
	strcpy(status_msg, "Error: Unable to connect to the Autolab server");
	close(clientfd);
	return -1;
    }

    /* 
     * Make sure the data will fit in the buffer. Make the
     * conservative assumption that each character in the result
     * string will be translated into its corresponding 3 character
     * '%XX' hex url encoding. Include a conservative pad of 128
     * bytes for separators in the HTTP URI.  
     */
    result_size = strlen(result);
    req_size = strlen(course) + strlen(userid) + 
	strlen(lab) + 3*result_size + 128; 
    if (req_size > SUBMITR_MAXBUF) {
	strcpy(status_msg, "Error: Result string too large. Increase SUBMITR_MAXBUF");
	close(clientfd);
	return -1;
    }

    /* URL-encode the result string */
    bzero((char *)enc_result, SUBMITR_MAXBUF);
    if (urlencode((unsigned char *)result, (unsigned char *)enc_result) < 0) {
	strcpy(status_msg, "Error: Result string contains an illegal or unprintable character.");
	close(clientfd);
	return -1;
    }

    /* Construct the HTTP request */
    sprintf(buf, "GET /%s/submitr.pl/?userid=%s&lab=%s&result=%s&submit=submit HTTP/1.0\r\n\r\n", course, userid, lab, enc_result);

    /* Send the request to the server */
    if (rio_writen(clientfd, buf, strlen(buf)) < 0) {
	strcpy(status_msg, "Error: Client unable to write to the Autolab server");
	close(clientfd);
	return -1;
    }

    /* Read first HTTP response header line from the server */
    rio_readinitb(&rio, clientfd);
    if (rio_readlineb(&rio, buf, SUBMITR_MAXBUF) <= 0) {
	strcpy(status_msg, "Error: Client unable to read first header from Autolab server");
	close(clientfd);
	return -1;
    }
    sscanf(buf, "%s %d %[a-zA-z ]", version, &errcode, errmsg);
    if (errcode != 200) {
	sprintf(status_msg, "Error: HTTP request failed with error %d: %s", 
		errcode, errmsg);
	close(clientfd);
	return -1;
    }

    /* Read the remaining HTTP response header lines */
    while (strcmp(buf, "\r\n")) {
	if (rio_readlineb(&rio, buf, SUBMITR_MAXBUF) <= 0) {
	    strcpy(status_msg, "Error: Client unable to read headers from Autolab server");
	    close(clientfd);
	    return -1;
	}
    }

    /* Read and echo the response from the server */
    if (rio_readlineb(&rio, buf, SUBMITR_MAXBUF) <= 0) {
	strcpy(status_msg, "Error: Client unable to read status message from Autolab server");
	close(clientfd);
	return -1;
    }

    /* Set the return status message, clean up, and exit */
    strcpy(status_msg, buf);
    close(clientfd);

    if (!strcmp(status_msg, "OK"))
	return 0;
    else 
	return -1;
}


/******************
 * Public functions
 ******************/

/*
 * init_timeout - Time out the driver if student code hangs.
 * The argument is in seconds; -1 means to use the AUTOGRADE_TIMEOUT, 0
 * means never timeout.
 */
void init_timeout(int timeout) {
    if (timeout == 0) {
	return;
    }
    if (timeout < 0) {
	timeout = AUTOGRADE_TIMEOUT;
    }
    signal(SIGALRM, sigalrm_handler);
    alarm(timeout); 
}

/* 
 * init_driver - Initialize the driverlib package
 */
int init_driver(char *status_msg) 
{
    int clientfd;                  /* Socket descriptor */
    struct hostent *hp;            /* DNS host entry */
    struct sockaddr_in serveraddr; /* Server's socket address */

    char *hostname = SERVER_NAME;
    int port = SERVER_PORT;

    /* Ignore any terminating SIGPIPE signals */
    signal(SIGPIPE, SIG_IGN);
    signal(SIGPOLL, SIG_IGN);
    signal(SIGPOLL, SIG_IGN);

    /*
     * Make sure that we can talk to the server 
     */

    /* Create the initial socket descriptor */
    if ((clientfd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
	strcpy(status_msg, "Error: Client unable to create socket");
	return -1;
    }
	
    /* Fill in the server's IP address and port */
    if ((hp = gethostbyname(hostname)) == NULL) {
	strcpy(status_msg, "Error: DNS is unable to resolve server address");
	close(clientfd);
	return -1;
    }
    bzero((char *) &serveraddr, sizeof(serveraddr));
    serveraddr.sin_family = AF_INET;
    bcopy((char *)hp->h_addr, 
	  (char *)&serveraddr.sin_addr.s_addr, hp->h_length);
    serveraddr.sin_port = htons(port);

    /* Establish a connection with the server */
    if (connect(clientfd, (SA *) &serveraddr, sizeof(serveraddr)) < 0) {
	strcpy(status_msg, "Error: Unable to connect to server");
	close(clientfd);
	return -1;
    }

    /* Close the connection with the server */
    close(clientfd);
    strcpy(status_msg, "OK");
    return 0;
}    

/*
 * driver_post - This is the routine that the driver calls when
 *     it needs to transmit an autoresult string to Autolab
 */
int driver_post(char *userid, char *result, int autograded, char *status_msg) 
{
    int status;

    /* Echo autoresult string to stdout if driver called by an autograder */
    if (autograded) {
	printf("\nAUTORESULT_STRING=%s\n", result);
	strcpy(status_msg, "OK");
	return 0;
    }

    /* 
     * If the driver was called with a specific user, then submit
     * the autoresult string to the Autolab server 
     */
    if (userid && strcmp(userid, "")) {
	status = submitr(SERVER_NAME, 
			 SERVER_PORT,
			 COURSE_NAME,
			 userid,
			 LAB,
			 result,
			 status_msg);
	return status;
    }

    /* Did nothing, simply return success */
    strcpy(status_msg, "OK");
    return 0;
}
