#include <algorithm>
#include <iostream>
#include <string>
#include <vector>
using namespace std;

template <typename Container>
void print(const Container& container) {
  for (const auto& element : container) {
    cout << "\"" << element << "\"  ";
  }
  cout << endl;
}

void removeEmptyStrings(vector<string>& strings) {
  // first call remove to "bubble up" the items that will be kept
  auto it = remove_if(begin(strings), end(strings), [](const string& str) { return str.empty(); });

  // erase the removed elements
  strings.erase(it, end(strings));
}

int main() {
  vector<string> myVector = {"", "one", "", "two", "three", "four"};

  cout << "Before Remove (" << myVector.size() << " strings):\n";
  print(myVector);

  removeEmptyStrings(myVector);

  cout << "After Remove (" << myVector.size() << " strings):\n";
  print(myVector);

  return 0;
}
