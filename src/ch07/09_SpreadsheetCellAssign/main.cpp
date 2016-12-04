#include "SpreadsheetCell.h"
#include <iostream>
#include <string>
using namespace std;

void test1() {
  SpreadsheetCell myCell(5);
  SpreadsheetCell anotherCell(myCell);
  SpreadsheetCell aThirdCell = myCell;
  anotherCell = myCell;  // Calls operator= for anotherCell.

  SpreadsheetCell myCell2(5);
  string s1;
  s1 = myCell2.getString();

  SpreadsheetCell myCell3(5);
  string s2 = myCell3.getString();
}

void test2() {
  SpreadsheetCell myCell, anotherCell, aThirdCell;

  myCell = anotherCell = aThirdCell;
  myCell.operator=(anotherCell.operator=(aThirdCell));

  SpreadsheetCell cell(4);
  cell = cell;  // self-assignment
}

int main() {
  test1();
  cout << "--------------------" << endl;

  test2();
  cout << "--------------------" << endl;

  return 0;
}
