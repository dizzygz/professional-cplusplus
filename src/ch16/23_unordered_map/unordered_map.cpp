#include <iostream>
#include <string>
#include <unordered_map>
using namespace std;

int main() {
  unordered_map<int, string> m = {
      {1, "Item 1"}, {2, "Item 2"}, {3, "Item 3"}, {4, "Item 4"},
  };

  for (const auto& p : m) {
    cout << p.first << " = " << p.second << endl;
  }

  return 0;
}
