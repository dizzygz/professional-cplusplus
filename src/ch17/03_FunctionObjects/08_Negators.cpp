#include <algorithm>
#include <functional>
#include <iostream>
#include <vector>
using namespace std;

bool perfectScore(int num) { return (num >= 100); }

int main() {
  vector<int> myVector{105, 98, 100, 200, 400};
  auto endIter = end(myVector);

  // Using not1
  function<bool(int)> f = perfectScore;
  auto it = find_if(begin(myVector), endIter, not1(f));

  // Using C++11 Lambda:
  // auto it = find_if(begin(myVector), endIter, [](int i){ return i < 100; });

  if (it == endIter) {
    cout << "All perfect scores" << endl;
  } else {
    cout << "Found a \"less-than-perfect\" score of " << *it << endl;
  }

  return 0;
}
