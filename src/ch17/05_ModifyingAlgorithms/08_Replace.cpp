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
  vector<int> vec = {-1, 10, -5, 2, 7, -2};
  int low = -1;
  int up = 5;

  cout << "Before Replace:\n";
  print(vec);

  replace_if(begin(vec), end(vec), [low](int i) { return i < low; }, low);
  replace_if(begin(vec), end(vec), [up](int i) { return i > up; }, up);

  cout << "After Replace:\n";
  print(vec);

  return 0;
}
