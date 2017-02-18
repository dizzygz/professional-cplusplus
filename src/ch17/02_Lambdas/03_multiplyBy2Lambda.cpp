#include <functional>
#include <iostream>
using namespace std;

function<int(void)> multiplyBy2Lambda1(int x) {
  return [x] { return 2 * x; };
}

// Using C++14 function return type deduction
auto multiplyBy2Lambda2(int x) {
  return [x] { return 2 * x; };
}

int main() {
  auto fn = multiplyBy2Lambda1(5);
  cout << fn() << endl;

  fn = multiplyBy2Lambda2(5);
  cout << fn() << endl;

  return 0;
}
