# ttcn3_debugger

This is first, crude atempt automating debuger found mctr https://github.com/eclipse/titan.core/tree/master/mctr2/mctr
This scripts, simialary to ttcn3_start,  wraps around mctr and provides tcp servcer controled by mctr commands.

# Example usage

1. install titan https://github.com/eclipse/titan.core/
2. create small project and compie it with  **ttcn3_makefilegen -fn** to enable degubing and **make** it!
3. start **ttcn3_debuger** similary to this:

```bash
#!/bin/bash
./ttcn3_debuger \
  /home/dawid/tmp/project/hello_world \
  /home/dawid/tmp/project/MyExample.cfg
```
first arg is compiled program, second configuration file for this program
4. then connect via telnet to port 6666 and type **help** command
5. set your break point: **dsetbp hello_world 48**
6. start maint test component: **smtc**

### Todos
- running ttcn3_debuger glitches my terminal window, definetly pty.spawn related
- gui for showing variables

**Free Softwara!**
 

