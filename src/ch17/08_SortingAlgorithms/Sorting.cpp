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
  vector<int> vec = {10, 3, 6, 2, 9, 4, 2, 4, 5, 1, 1, 1};

  cout << "Original sequence: \n";
  print(vec);

  sort(begin(vec), end(vec));

  cout << "Sorted sequence: \n";
  print(vec);

  return 0;
}
