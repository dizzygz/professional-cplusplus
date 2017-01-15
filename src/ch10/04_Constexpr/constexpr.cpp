#include <iostream>
using namespace std;

constexpr int getArraySize() { return 32; }

int main() {
  int myArray[getArraySize()];  // OK
  myArray[0] = 1;

  cout << sizeof(myArray) << endl;
  return 0;
}
