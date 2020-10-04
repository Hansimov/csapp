/* 
 * Naive readers-writers solution 
*/
#include "csapp.h"

/* $begin reader0 */
/* Global variable */
sem_t w; /* Initially = 1 */

void reader(void) 
{
    while (1) {
	P(&w);

	/* Critical section: */
	/* Reading happens   */

	V(&w);
    }
}
/* $end reader0 */

/* $begin writer0 */


void writer(void) 
{
    while (1) {
	P(&w);

	/* Critical section: */
	/* Writing happens   */

	V(&w);
    }
}
/* $end writer0 */
