#include "namespaces.h"
using namespace mycode;

int main() {
  mycode::foo();  // callst the "foo" function in the "mycode" namespace
  foo();          // implies mycode::fo();

  return 0;
}
