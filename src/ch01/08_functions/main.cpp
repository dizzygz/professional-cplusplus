#include <iostream>
using namespace std;

void printAdd(int number1, int number2) {
  cout << "Entering function: " << __func__ << endl;
  cout << number1 << " + " << number2 << " = " << number1 + number2 << endl;
}

int add(int number1, int number2) {
  cout << "Entering function: " << __func__ << endl;
  return number1 + number2;
}

auto add1(int number1, int number2) -> int {  // C++11 alternate syntax
  cout << "Entering function: " << __func__ << endl;
  return number1 + number2;
}

auto add2(int number1, int number2) {  // C++14 alternate syntax
  cout << "Entering function: " << __func__ << endl;
  return number1 + number2;
}

int main() {
  int n1{10}, n2{20}, rc{0};

  printAdd(n1, n2);
  cout << endl;

  rc = add(n1, n2);
  cout << n1 << " + " << n2 << " = " << rc << endl;
  cout << endl;

  rc = add1(n1, n2);
  cout << n1 << " + " << n2 << " = " << rc << endl;
  cout << endl;

  rc = add2(n1, n2);
  cout << n1 << " + " << n2 << " = " << rc << endl;
  cout << endl;

  return 0;
}
