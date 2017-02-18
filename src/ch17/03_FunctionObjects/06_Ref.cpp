#include <algorithm>
#include <functional>
#include <iostream>
#include <iostream>
#include <vector>
using namespace std;

void increment(int& value) { ++value; }

int main() {
  int index = 0;
  increment(index);  // Increments index (index = 1)
  cout << index << endl;

  auto incr1 = bind(increment, index);  // Copy, does not increment index (index = 1)
  incr1();
  cout << index << endl;

  auto incr2 = bind(increment, ref(index));  // bind by ref, increments index  (index = 2)
  incr2();
  cout << index << endl;

  return 0;
}
