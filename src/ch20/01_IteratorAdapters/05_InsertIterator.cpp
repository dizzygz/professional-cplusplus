#include <algorithm>
#include <functional>
#include <iostream>
#include <iterator>
#include <set>
#include <vector>
using namespace std;

template <typename Container>
void print(const Container& container, const string& separator = " ") {
  copy(cbegin(container), cend(container), ostream_iterator<int>(cout, separator.c_str()));
  cout << endl;
}

int main() {
  vector<int> vectorOne{5, 100, 3, 2, 100, 4, 1};
  set<int> setOne;

  cout << "Vector One: ";
  print(vectorOne);

  insert_iterator<set<int>> inserter(setOne, begin(setOne));
  remove_copy_if(cbegin(vectorOne), cend(vectorOne), inserter, [](int i) { return i == 100; });

  cout << "Vector One: ";
  print(vectorOne);

  cout << "Set One: ";
  print(setOne);

  return 0;
}
