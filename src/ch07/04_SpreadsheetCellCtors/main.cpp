#include "SpreadsheetCell.h"
#include <iostream>
#include <memory>
using namespace std;

void testStackCtors() {
  SpreadsheetCell myCell(5), anotherCell(4);

  cout << "cell 1: " << myCell.getValue() << endl;
  cout << "cell 2: " << anotherCell.getValue() << endl;
}

void testHeapCtors() {
  auto smartCellp = make_unique<SpreadsheetCell>(4);
  // ... do something with the cell, no need to delete the smart pointer

  // Or with naked pointers, without smart pointers (not recommended)
  SpreadsheetCell* myCellp = new SpreadsheetCell(5);
  SpreadsheetCell* anotherCellp = nullptr;
  anotherCellp = new SpreadsheetCell(4);
  // ... do something with the cells

  delete myCellp;
  myCellp = nullptr;

  delete anotherCellp;
  anotherCellp = nullptr;
}

void testMultipleCtors() {
  SpreadsheetCell aThirdCell("test");                      // uses string-arg ctor
  SpreadsheetCell aFourthCell(4.4);                        // uses double-arg ctor
  auto aThirdCellp = make_unique<SpreadsheetCell>("4.4");  // string-arg ctor

  cout << "aThirdCell: " << aThirdCell.getValue() << endl;
  cout << "aFourthCell: " << aFourthCell.getValue() << endl;
  cout << "aThirdCellp: " << aThirdCellp->getValue() << endl;
}

void testNoDefaultCtor() {
  // Comment out these next two lines to test the third line
  // SpreadsheetCell cells[3]; // FAILS compilation without a default constructor
  // SpreadsheetCell* myCellp = new SpreadsheetCell[10]; // also FAILS

  // This line compiles without a default constructor
  SpreadsheetCell cells[3] = {SpreadsheetCell(0), SpreadsheetCell(23), SpreadsheetCell(41)};
  for (auto& cell : cells) {
    cout << cell.getValue() << endl;
  }
}

int main() {
  testStackCtors();
  cout << "---------------------------" << endl;

  testHeapCtors();
  cout << "---------------------------" << endl;

  testMultipleCtors();
  cout << "---------------------------" << endl;

  testNoDefaultCtor();
  cout << "---------------------------" << endl;

  return 0;
}
