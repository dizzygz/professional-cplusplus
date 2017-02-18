#include <algorithm>
#include <cstddef>
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
  size_t cnt = 6;

  cnt = min(cnt, vec1.size());
  vec2.resize(cnt);

  cout << "Before Copy:\n";
  print(vec1);
  print(vec2);

  copy_n(cbegin(vec1), cnt, begin(vec2));

  cout << "After Copy:\n";
  print(vec1);
  print(vec2);

  return 0;
}
