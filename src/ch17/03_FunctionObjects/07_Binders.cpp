#include <algorithm>
#include <functional>
#include <iostream>
#include <vector>
using namespace std;

int main() {
  vector<int> myVector(150);
  iota(begin(myVector), end(myVector), 1);

  auto endIter = end(myVector);

  // C++14 solution using std::bind and transparent function object
  auto it = find_if(begin(myVector), endIter, bind(greater_equal<>(), placeholders::_1, 100));

  // C++11 solution using std::bind
  // auto it = find_if(begin(myVector), endIter, bind(greater_equal<int>(), placeholders::_1, 100));

  // Recommended C++11/C++14 solution with lambda
  // auto it = find_if(begin(myVector), endIter, [](int i){ return i >= 100; });

  if (it == endIter) {
    cout << "No perfect scores" << endl;
  } else {
    cout << "Found a \"perfect\" score of " << *it << endl;
  }

  return 0;
}
