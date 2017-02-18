#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;

template <typename Container>
void print(const Container& container, const string& separator = " ") {
  for (const auto& element : container) {
    cout << element << separator;
  }
  cout << endl;
}

int main() {
  vector<int> myVector = {1, 2, 3, 4, 5};
  print(myVector);

  transform(begin(myVector), end(myVector), begin(myVector), [](int i) { return i + 100; });
  print(myVector);

  return 0;
}
