#include <iostream>
using namespace std;

void func(char* /* str */) { cout << "char* version" << endl; }
void func(int /* i */) { cout << "int version" << endl; }

int main() {
  // func(NULL);  // call to func is ambigous!
  func(nullptr);  // calls func(char *), as expected

  return 0;
}
