#include "SpreadsheetCell.h"
#include <iostream>
#include <memory>
using namespace std;

void spreadsheetCellTest() {
  SpreadsheetCell myCell, anotherCell;
  myCell.setValue(6);
  anotherCell.setString("3.2");

  cout << "cell 1: " << myCell.getValue() << endl;
  cout << "cell 2: " << anotherCell.getValue() << endl;
}

void spreadsheetCellHeapTest() {
  SpreadsheetCell* myCell = new SpreadsheetCell();

  myCell->setValue(3.7);
  cout << "cell 1: " << myCell->getValue() << " " << myCell->getSting() << endl;

  delete myCell;
  myCell = nullptr;
}

void spreadsheetCellHeapAlternateTest() {
  SpreadsheetCell* myCell = new SpreadsheetCell();

  (*myCell).setValue(3.7);
  cout << "cell 1: " << (*myCell).getValue() << " " << (*myCell).getSting() << endl;

  delete myCell;
  myCell = nullptr;
}

void spreadsheetCellSmartPointerTest() {
  auto myCell = make_unique<SpreadsheetCell>();
  // Equivalent to:
  // unique_ptr<SpreadsheetCell> myCell(new SpreadsheetCell());

  myCell->setValue(3.7);
  cout << "cell 1: " << myCell->getValue() << " " << myCell->getSting() << endl;
}

int main() {
  spreadsheetCellTest();
  cout << "--------------------------" << endl;

  spreadsheetCellHeapTest();
  cout << "--------------------------" << endl;

  spreadsheetCellHeapAlternateTest();
  cout << "--------------------------" << endl;

  spreadsheetCellSmartPointerTest();
  cout << "--------------------------" << endl;

  return 0;
}
