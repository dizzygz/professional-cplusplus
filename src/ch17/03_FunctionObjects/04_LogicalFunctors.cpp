#include <cmath>
#include <functional>
#include <iostream>
#include <numeric>
#include <vector>
using namespace std;

bool allTrue(const vector<bool>& flags) {
  return accumulate(begin(flags), end(flags), true, logical_and<>());  // C++14 transparent function object
  // return accumulate(begin(flags), end(flags), true, logical_and<bool>());	// Pre-C++14
}

bool anyTrue(const vector<bool>& flags) {
  return accumulate(begin(flags), end(flags), false, logical_or<>());  // C++14 transparent function object
  // return accumulate(begin(flags), end(flags), false, logical_or<bool>());	// Pre-C++14
}

int main() {
  vector<bool> v1{0, 0, 0, 0, 0};
  vector<bool> v2{1, 1, 1, 1, 1};
  vector<bool> v3{1, 1, 0, 1, 1};
  vector<bool> v4{0, 0, 1, 0, 0};

  cout << "allTrue {0, 0, 0, 0, 0}? " << (allTrue(v1) ? "yes" : "no") << endl;
  cout << "anyTrue {0, 0, 0, 0, 0}? " << (anyTrue(v1) ? "yes" : "no") << endl;
  cout << endl;
  cout << "allTrue {1, 1, 1, 1, 1}? " << (allTrue(v2) ? "yes" : "no") << endl;
  cout << "anyTrue {1, 1, 1, 1, 1}? " << (anyTrue(v2) ? "yes" : "no") << endl;
  cout << endl;
  cout << "allTrue {1, 1, 0, 1, 1}? " << (allTrue(v3) ? "yes" : "no") << endl;
  cout << "anyTrue {1, 1, 0, 1, 1}? " << (anyTrue(v3) ? "yes" : "no") << endl;
  cout << endl;
  cout << "allTrue {0, 0, 1, 0, 0}? " << (allTrue(v4) ? "yes" : "no") << endl;
  cout << "anyTrue {0, 0, 1, 0, 0}? " << (anyTrue(v4) ? "yes" : "no") << endl;

  return 0;
}
