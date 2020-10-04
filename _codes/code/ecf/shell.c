/* $begin shell-ans */
/* 
 * A simple shell with job control 
 * Usage: shell [-v]
 *    -v: verbose
 */
#include "csapp.h"

#define MAXARGS   128
#define MAXJOBS    16

/* Job states */
#define UNDEF 0 /* undefined */
#define FG 1    /* running in foreground */
#define BG 2    /* running in background */
#define ST 3    /* stopped */

/* 
 * Job state transitions and enabling actions:
 *     FG -> ST  : ctrl-z
 *     ST -> FG  : "fg pid"
 *     ST -> BG  : "bg pid"
 *     BG -> FG  : "fg pid"
 * At most 1 job can be in the FG state.
 */

/* begin global variables */
char prompt[] = "> ";       /* command line prompt */
int verbose = 0;            /* if true, print extra output */
char sbuf[MAXLINE];         /* for composing sprintf messages */

struct job_t {
    pid_t pid;              /* job PID */
    int state;              /* UNDEF, BG, FG, or ST */
    char cmdline[MAXLINE];  /* command line */
};
struct job_t jobs[MAXJOBS]; /* job list */

/* end global variables */

/***********************************************
 * Utility routines that manipulate the job list
 **********************************************/

/* clearjob - clear the entries in a job */
void clearjob(struct job_t *job) {
    job->pid = 0;
    job->state = UNDEF;
    job->cmdline[0] = '\0';
}

/* initjobs - initialize the job list */
void initjobs(struct job_t *jobs) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
	clearjob(&jobs[i]);
}

/* addjob - add a job to the job list */
int addjob(struct job_t *jobs, pid_t pid, int state, char *cmdline) 
{
    int i;
    
    for (i = 0; i < MAXJOBS; i++) {
	if (jobs[i].pid == 0) {
	    jobs[i].pid = pid;
	    jobs[i].state = state;
	    strcpy(jobs[i].cmdline, cmdline);
	    return 1;
	}
    }
    printf("Tried to create too many jobs\n");
    return 0;
}

/* deletejob - delete a job from the job list */
int deletejob(struct job_t *jobs, pid_t pid) 
{
    int i;

    for (i = 0; i < MAXJOBS; i++) {
	if (jobs[i].pid == pid) {
	    clearjob(&jobs[i]);
	    return 1;
	}
    }
    return 0;
}

/* updatejob - update the state of a job with PID=pid */
int updatejob(struct job_t *jobs, pid_t pid, int state) 
{
    int i;

    for (i = 0; i < MAXJOBS; i++) {
	if (jobs[i].pid == pid) {
	    jobs[i].state = state;
	    return 1;
	}
    }
    printf("Job %d not found\n", pid);
    return 0;
}

/* fgpid - return pid of current foreground job, 0 if no such job */
pid_t fgpid(struct job_t *jobs) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].state == FG)
	    return jobs[i].pid;
    return 0;
}

/* getjob - find a job in the job list */
struct job_t *getjob(struct job_t *jobs, pid_t pid) {
    int i;

    for (i = 0; i < MAXJOBS; i++)
	if (jobs[i].pid == pid)
	    return &jobs[i];
    return NULL;
}

/* listjobs - print the job list */
void listjobs(struct job_t *jobs) {
    int i;
    
    for (i = 0; i < MAXJOBS; i++) {
	if (jobs[i].pid != 0) {

	    /* print pid */
	    printf("%5d ", (int)jobs[i].pid);

	    /* print job state */
	    switch (jobs[i].state) {
		case BG: 
		    printf("Running    ");
		    break;
		case FG: 
		    printf("Foreground ");
		    break;
		case ST: 
		    printf("Stopped    ");
		    break;
	    default:
		    printf("internal error: job[%d].state=%d ", 
			   i, jobs[i].state);
	    }

	    /* print job command line */
	    printf("%s", jobs[i].cmdline);
	}
    }
}
/********************** 
 * end utility routines
 **********************/

/* 
 * parseline - parse the command line and build the argv array 
 */
int parseline(const char *cmdline, char **argv) 
{
    char array[MAXLINE]; /* holds local copy of command line */
    char *buf = array;   /* ptr that traverses command line */
    char *delim;         /* points to first space delimiter */
    int argc;            /* number of args */
    int bg;              /* background job? */

    strcpy(buf, cmdline);
    buf[strlen(buf)-1] = ' ';  /* replace trailing '\n' with space */
    while (*buf && (*buf == ' ')) /* ignore leading spaces */
	buf++;

    /* build the argv list */
    argc = 0;
    while ((delim = strchr(buf, ' '))) {
	argv[argc++] = buf;
	*delim = '\0';
	buf = delim + 1;
	while (*buf && (*buf == ' ')) /* ignore spaces */
	       buf++;
    }
    argv[argc] = NULL;
    
    if (argc == 0)  /* ignore blank line */
	return 1;

    /* should the job run in the background? */
    if ((bg = (*argv[argc-1] == '&')) != 0)
	argv[--argc] = NULL;

    return bg;
}

/* 
 * waitfg - block until FG job pid terminates or stops.
 */
void waitfg(pid_t pid)
{
    int status;
    
    /* wait for FG job to stop (WUNTRACED) or terminate */
    if (waitpid(pid, &status, WUNTRACED) < 0)
	unix_error("waitfg: waitpid error");
    
    /* FG job has stopped. Change its state in jobs list */
    if (WIFSTOPPED(status)) {
	sprintf(sbuf, "Job %d stopped by signal", pid);
	psignal(WSTOPSIG(status), sbuf); 
	updatejob(jobs, pid, ST);
    }
    
    /* FG job has terminated. Remove it from job list */
    else {
	/* check if job was terminated by an uncaught signal */
	if (WIFSIGNALED(status)) { 
	    sprintf(sbuf, "Job %d terminated by signal", pid);
	    psignal(WTERMSIG(status), sbuf); 
	}
	deletejob(jobs, pid);
	if (verbose)
	    printf("waitfg: job %d deleted\n", pid);
    }
}

/* 
 * builtin_command - if builtin, run it and return true
 */
int builtin_command(char **argv) {
    char *cmd = argv[0];

    /* jobs command */
    if (!strcmp(cmd, "jobs")) {
	listjobs(jobs);
	return 1;    
    }

    /* bg and fg commands */
    if (!strcmp(cmd, "bg") || !strcmp(cmd, "fg")) {
	int pid;
	struct job_t *jobp;

	/* ignore command if no argument */
	if (argv[1] == NULL) {
	    printf("%s command needs PID argument\n", cmd);
	    return 1;
	}
	pid = atoi(argv[1]);

	if ((jobp = getjob(jobs, pid)) != NULL) {
	    if (!strcmp(cmd, "bg")) {
		Kill(pid, SIGCONT);
		updatejob(jobs, pid, BG);
		printf("%d %s", pid, jobs->cmdline);
	    }
	    if (!strcmp(cmd, "fg")) {
		Kill(pid, SIGCONT);
		updatejob(jobs, pid, FG);
		waitfg(pid);
	    }
	}
	else 
	    printf("Job %d not found\n", pid);
	return 1;
    }

    /* ignore singleton & */
    if (!strcmp(argv[0], "&")) {
	return 1;
    }

    /* not a builtin command */
    return 0; 
}

/* 
 * sigchld_handler - SIGCHLD handler. The kernel sends a SIGCHLD 
 *     whenever a child process (job) terminates (becomes a zombie) or 
 *     stops  because it received a SIGTSTP signal (ctrl-z). The handler 
 *     reaps all available zombie jobs, but doesn't wait for any
 *     nonzombie jobs.
 */
void sigchld_handler(int sig) 
{
    pid_t pid;
    int status;
  
    if (verbose)
	printf("sigchld_handler: entering \n");

    /* 
     * Reap any zombie jobs.
     * The WNOHANG here is important. Without it, the 
     * the handler would wait for all running or stopped BG 
     * jobs to terminate, during which time the shell would not
     * be able to accept input. 
     */
    while ((pid = waitpid(-1, &status, WNOHANG)) > 0) { 
	deletejob(jobs, pid);
	if (verbose)
	    printf("sigchld_handler: job %d deleted\n", pid);
    }

    /* 
     * Check for normal loop termination. 
     * This is a little tricky. For our purposes, 
     * the waitpid loop terminates normally for one of
     * two reasons: (a) there are no children left 
     * (pid == -1 and errno == ECHILD) or (b) there are
     * still children left, but none of them are zombies (pid == 0).
     */
    if (!((pid == 0) || (pid == -1 && errno == ECHILD)))
	unix_error("sigchld_handler wait error");

    if (verbose)
	printf("sigchld_handler: exiting\n");

    return;
}

/* 
 * sigint_handler - SIGINT handler. The kernel sends a SIGINT whenver
 *     the user types ctrl-c at the keyboard. Simply catch and return.
 */
void sigint_handler(int sig) 
{
    if (verbose)
	printf("sigint_handler: shell caught SIGINT\n");
}

/*
 * sigtstp_handler - SIGTSTP handler. The kernel sends a SIGSTP whenver
 *     the user types ctrl-z at the keyboard. Simply catch and return.
 */ 
void sigtstp_handler(int sig) 
{
    if (verbose)
	printf("sigtstp_handler: shell caught SIGTSTP\n");
}

/* 
 * eval - evaluate a command line
 */
void eval(char *cmdline) 
{
    char *argv[MAXARGS]; /* argv for execve() */
    int bg;              /* should the job run in bg or fg? */
    pid_t pid;           /* process id */

    /* parse command line */
    bg = parseline(cmdline, argv); 
    if (argv[0] == NULL)  
	return;   /* ignore empty lines */
    if (!strcmp(argv[0], "quit"))
	exit(0);  /* terminate shell */

    if (!builtin_command(argv)) { 

	if ((pid = Fork()) == 0) {  /* child */

	    /* Background jobs should ignore SIGINT (ctrl-c)  */
	    /* and SIGTSTP (ctrl-z) */
	    if (bg) {
		Signal(SIGINT, SIG_IGN);
		Signal(SIGTSTP, SIG_IGN);
	    }

	    if (execve(argv[0], argv, environ) < 0) {
		printf("%s: Command not found.\n", argv[0]);
		fflush(stdout);
		exit(0);
	    }
	}

	/* parent waits for foreground job to terminate or stop */
	addjob(jobs, pid, (bg == 1 ? BG : FG), cmdline);
	if (!bg) 
	    waitfg(pid);
	else
	    printf("%d %s", pid, cmdline);
    }
    return;
}

void usage() 
{
    fprintf(stderr, "usage: shell [-v]\n");
    exit(0);
}

/*
 * main - shell main routine 
 */
int main(int argc, char **argv) 
{
    char cmdline[MAXLINE]; /* command line */

    if (argc > 2) 
	usage();
    if (argc == 2) {
	if (!strcmp(argv[1], "-v")) 
	    verbose = 1;
	else 
	    usage();
    }

    Signal(SIGINT, sigint_handler);   /* ctrl-c */
    Signal(SIGCHLD, sigchld_handler); 
    Signal(SIGTSTP, sigtstp_handler); /* ctrl-z */

    initjobs(jobs);

    /* read/eval loop */
    while (1) {
	/* read command line */
	printf("%s", prompt);                   
	Fgets(cmdline, MAXLINE, stdin); 
	if (feof(stdin))
	    exit(0);

	/* evaluate command line */
	eval(cmdline);
    } 

    exit(0);
}
/* $end shell-ans */
  


