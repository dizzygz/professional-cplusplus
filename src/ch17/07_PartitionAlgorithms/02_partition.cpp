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
  vector<int> vec = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

  cout << "Original numbers: ";
  print(vec);

  partition(begin(vec), end(vec), [](int i) { return i % 2 == 0; });

  cout << "Partitioned result, Even numbers first: ";
  print(vec);

  return 0;
}
