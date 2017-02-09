#include <iostream>
#include <string>

using namespace std;

class FunctionObject {
public:
  int operator()(int inParam);  // Function call operator
  void operator()(string& /*str*/) {}
  int doSquare(int inParam);  // Normal method
};

// Implementation of overloaded function call operator
int FunctionObject::operator()(int inParam) { return doSquare(inParam); }

// Implementation of normal method
int FunctionObject::doSquare(int inParam) { return inParam * inParam; }

int main() {
  int x = 3, xSquared, xSquaredAgain;
  FunctionObject square;

  xSquared = square(x);                // Call the function call operator
  xSquaredAgain = square.doSquare(x);  // Call the normal method

  cout << xSquared << endl;
  cout << xSquaredAgain << endl;

  return 0;
}
