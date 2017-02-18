#include <algorithm>
#include <functional>
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
  vector<int> vec1 = {1, 2};
  vector<int> vec2 = {11, 22, 33};

  if (vec2.size() < vec1.size()) {
    cout << "Vector2 should be at least the same size as vector1." << endl;
    return 1;
  }

  cout << "Vector1: ";
  print(vec1);

  cout << "Vector2: ";
  print(vec2);

  transform(begin(vec1), end(vec1), begin(vec2), begin(vec1), [](int a, int b) { return a + b; });

  cout << "Vector1: ";
  print(vec1);

  cout << "Vector2: ";
  print(vec2);

  return 0;
}
