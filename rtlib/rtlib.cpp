#include <iostream>
#include <stdio.h>

extern "C" void log_int(char *name, int value)
{
  std::cout << name << " is " << value << std::endl;
}
