#include <linux/sched.h>
#include <linux/kernel.h>
#include <linux/smp.h>
#include <linux/errno.h>

asmlinkage int sys_bind_to_cpu(unsigned long mask)
{
        if (!mask || !(mask & cpu_present_map))
	        return -EINVAL;

        current->processor_mask = mask;
	if ( !(mask & (1<<current->processor)) ) {
	        int i = 0;
		for(i = 0; !(mask & (1<<i)); i++) ;
		current->last_processor = i;
                need_resched = 1;
	}
	return 0;
}
