#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;

int main() {
  vector<int> myVector(150);
  iota(begin(myVector), end(myVector), 1);

  auto endIt = cend(myVector);
  auto it = find_if(cbegin(myVector), endIt, [](int i) { return i >= 100; });
  if (it == endIt) {
    cout << "No perfect scores" << endl;
  } else {
    cout << "Found a \"perfect\" score of " << *it << endl;
  }
  return 0;
}
