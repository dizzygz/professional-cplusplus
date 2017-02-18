#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;

int main() {
  int num;

  vector<int> myVector(150);
  iota(begin(myVector), end(myVector), 1);

  while (true) {
    cout << "Enter a number to lookup (0 to stop): ";
    cin >> num;
    if (num == 0) {
      break;
    }
    auto endIt = cend(myVector);
    auto it = find(cbegin(myVector), endIt, num);
    if (it == endIt) {
      cout << "Could not find " << num << endl;
    } else {
      cout << "Found " << *it << endl;
    }
  }

  return 0;
}
