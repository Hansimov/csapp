
/* $begin gamedata */
struct pixel {
    char r;
    char g;
    char b;
    char a;
};

struct pixel buffer[480][640];
int i, j;
char *cptr;
int *iptr;
/* $end gamedata */

void loops() 
{

/* $begin gameloop1 */
    for (j = 0; j < 640; j++) {
	for (i = 0; i < 480; i++){
	    buffer[i][j].r = 0;
	    buffer[i][j].g = 0;
	    buffer[i][j].b = 0;
	    buffer[i][j].a = 0;
	}
    }
/* $end gameloop1 */


{
/* $begin gameloop2 */
    char *cptr = (char *) buffer;
    for (; cptr < (((char *) buffer) + 640 * 480 * 4); cptr++)
	*cptr = 0;
/* $end gameloop2 */
}

{
/* $begin gameloop3 */
    int *iptr = (int *)buffer;
    for (; iptr < ((int *)buffer + 640*480); iptr++)
	*iptr = 0;
/* $end gameloop3 */
}


}

