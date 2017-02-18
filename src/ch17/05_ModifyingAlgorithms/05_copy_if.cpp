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
  vector<int> vec1 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  vector<int> vec2;

  vec2.resize(vec1.size());

  cout << "Before Copy:\n";
  print(vec1);
  print(vec2);

  auto endIterator = copy_if(cbegin(vec1), cend(vec1), begin(vec2), [](int i) { return i % 2 == 0; });
  vec2.erase(endIterator, end(vec2));

  cout << "After Copy:\n";
  print(vec1);
  print(vec2);

  return 0;
}
