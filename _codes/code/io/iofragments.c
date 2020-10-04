#include "csapp.h"

void fragments()
{
    int sockfd=0;

    /* $begin fulldupopen */     
    FILE *fpin, *fpout;

    fpin = fdopen(sockfd, "r");
    fpout = fdopen(sockfd, "w");
    /* $end fulldupopen */     
    
    /* $begin fulldupclose */     
    fclose(fpin);
    fclose(fpout);
    /* $end fulldupclose */     

    /* $begin dirent */
    struct dirent {
        ino_t d_ino;       /* inode number */
        char  d_name[256]; /* Filename */
    };
    /* $end dirent */

}
