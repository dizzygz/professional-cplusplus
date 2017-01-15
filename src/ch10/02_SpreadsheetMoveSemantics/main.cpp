#include "Spreadsheet.h"
#include <iostream>
#include <vector>

using namespace std;

Spreadsheet CreateObject() { return Spreadsheet(3, 2); }

template <typename T>
void swapCopy(T& a, T& b) {
  T temp{a};
  a = b;
  b = temp;
}

template <typename T>
void swapMove(T& a, T& b) {
  T temp{std::move(a)};
  a = std::move(b);
  b = std::move(temp);
}

int main() {
  vector<Spreadsheet> vec;
  for (int i = 0; i < 2; ++i) {
    cout << "Iteration " << i << endl;
    vec.push_back(Spreadsheet(100, 100));
    cout << endl;
  }

  cout << "---------------------------------" << endl;
  Spreadsheet s(2, 3);
  s = CreateObject();

  cout << "---------------------------------" << endl;
  Spreadsheet s2(5, 6);
  s2 = s;

  cout << "---------------------------------" << endl;
  Spreadsheet s3(5, 6);
  s3 = std::move(s);

  cout << "---------------------------------" << endl;
  swapCopy(s2, s3);

  cout << "---------------------------------" << endl;
  swapMove(s2, s3);

  return 0;
}
