#include <iostream>
#include <string>
using namespace std;

int main() {
  string str1{"Hello, World"};   // pass a char *
  string str2{"Hello, World"s};  // pass a string literal

  cout << "The value of str1 is " << str1 << endl;
  cout << "The value of str2 is " << str2 << endl;

  return 0;
}
