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
  vector<int> vec1 = {1, 2, 3, 4, 5};
  vector<int> vec2;

  vec2.resize(vec1.size());

  cout << "Before Copy:\n";
  print(vec1);
  print(vec2);

  copy_backward(cbegin(vec1), cend(vec1), end(vec2));

  cout << "After Copy:\n";
  print(vec1);
  print(vec2);

  return 0;
}
