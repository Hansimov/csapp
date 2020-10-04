/* Add background load to make measurment more difficult */

typedef enum {CPU_LOAD, CACHE_LOAD, MEM_LOAD} load_t;

/* Add count processes running given load type */
void add_load(int count, load_t load_type);

/* Kill all existing loads */
void kill_loads();
