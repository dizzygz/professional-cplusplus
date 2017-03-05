#include <iostream>
using namespace std;

class Simple {
public:
  Simple() {
    mIntPtr = new int();
    cout << "Simple::Simple()" << endl;
  }
  virtual ~Simple() {
    delete mIntPtr;
    cout << "Simple::~Simple()" << endl;
  }

  void setIntPtr(int inInt) { *mIntPtr = inInt; }

private:
  int* mIntPtr;
};

void doSomething(Simple*& outSimplePtr) {
  outSimplePtr = new Simple();  // BUG! Doesn't delete the original.
}

int main() {
  Simple* simplePtr = new Simple();  // Allocate a Simple object.

  doSomething(simplePtr);

  delete simplePtr;  // Only cleans up the second object.

  return 0;
}
