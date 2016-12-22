#include "Spreadsheet.h"

#include <iostream>
using namespace std;

void printCellAt(const Spreadsheet& s, int x, int y) {
  cout << "Cell(" << x << ", " << y << "): " << s.getCellAt(x, y).getValue() << endl;
}

int main() {
  Spreadsheet s1{2, 2}, s2{4, 3};

  s1.setCellAt(0, 0, {1});
  s2.setCellAt(0, 0, {2});
  printCellAt(s1, 0, 0);
  printCellAt(s2, 0, 0);

  s1 = s2;

  printCellAt(s1, 0, 0);
  printCellAt(s2, 0, 0);

  return 0;
}
