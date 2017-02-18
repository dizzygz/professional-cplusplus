#include <algorithm>
#include <iostream>
#include <map>
using namespace std;

int main() {
  map<int, int> myMap = {{4, 40}, {5, 50}, {6, 60}};
  for_each(cbegin(myMap), cend(myMap),
           [](const pair<int, int>& p) { cout << p.first << "->" << p.second << endl; });

  cout << endl;

  // C++14: Generic lambda expression.
  for_each(cbegin(myMap), cend(myMap), [](const auto& p) { cout << p.first << "->" << p.second << endl; });

  return 0;
}
