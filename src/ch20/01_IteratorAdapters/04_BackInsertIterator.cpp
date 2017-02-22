#include <algorithm>
#include <functional>
#include <iostream>
#include <iterator>
#include <vector>
using namespace std;

template <typename Container>
void print(const Container& container, const string& separator = " ") {
  copy(cbegin(container), cend(container), ostream_iterator<int>(cout, separator.c_str()));
  cout << endl;
}

int main() {
  vector<int> vectorOne = {1, 100, 2, 3, 4, 100, 5};
  vector<int> vectorTwo;

  cout << "Vector One: ";
  print(vectorOne);

  back_insert_iterator<vector<int>> inserter(vectorTwo);
  remove_copy_if(cbegin(vectorOne), cend(vectorOne), inserter, [](int i) { return i == 100; });

  cout << "Vector One: ";
  print(vectorOne);

  cout << "Vector Two: ";
  print(vectorTwo);

  return 0;
}
