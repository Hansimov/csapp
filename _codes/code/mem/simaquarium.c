/* $begin simaquariumdata */
struct algae_position {
    int x;
    int y;
};

struct algae_position grid[16][16];
int total_x = 0, total_y = 0;
int i, j;
/* $end simaquariumdata */

void loops() 
{

/* $begin simaquariumloop1 */
    for (i = 0; i < 16; i++) {
	for (j = 0; j < 16; j++) {
	    total_x += grid[i][j].x;
	}
    }

    for (i = 0; i < 16; i++) {
	for (j = 0; j < 16; j++) {
	    total_y += grid[i][j].y;
	}
    }
/* $end simaquariumloop1 */	


/* $begin simaquariumloop2 */	
    for (i = 0; i < 16; i++){
	for (j = 0; j < 16; j++) {
	    total_x += grid[j][i].x;
	    total_y += grid[j][i].y;
	}
    }
/* $end simaquariumloop2 */	


/* $begin simaquariumloop3 */	
    for (i = 0; i < 16; i++){
	for (j = 0; j < 16; j++) {
	    total_x += grid[i][j].x;
	    total_y += grid[i][j].y;
	}
    }
/* $end simaquariumloop3 */	


}
