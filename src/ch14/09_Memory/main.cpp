#include "MemoryDemo.h"

using namespace std;

int main() {
  MemoryDemo* mem1 = new MemoryDemo();
  delete mem1;

  MemoryDemo* mem2 = new MemoryDemo[10];
  delete[] mem2;

  mem1 = new (nothrow) MemoryDemo();
  delete mem1;

  mem2 = new (nothrow) MemoryDemo[10];
  delete[] mem2;

  MemoryDemo* memp = new (5) MemoryDemo();
  delete memp;

  return 0;
}
