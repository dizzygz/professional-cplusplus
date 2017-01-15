#include <iostream>
using namespace std;

class MyClass {
public:
  MyClass(int& ref) : mRef(ref) {}
  void print() { cout << mRef << endl; }

private:
  int& mRef;
};

int main() {
  int i = 123;
  MyClass m(i);
  m.print();

  return 0;
}
