#include "SpreadsheetCell.h"

#include <iostream>
#include <memory>
using namespace std;

int main() {
  // stack based SpreadsheetCell
  SpreadsheetCell cell1, cell2;
  cell1.setValue(6);
  cell2.setString("3.2");
  cout << "cell 1: " << cell1.getValue() << endl;
  cout << "cell 2: " << cell2.getValue() << endl;

  // heap based SpreadsheetCell
  SpreadsheetCell* cell3 = new SpreadsheetCell;
  cell3->setValue(3.7);
  cout << "cell 3: " << cell3->getValue() << " " << cell3->getString() << endl;
  delete cell3;
  cell3 = nullptr;

  // smart pointer base SpreadsheetCell
  auto cell4 = make_unique<SpreadsheetCell>();
  // Equivalent to:
  // unique_ptr<SpreadsheetCell> cell4(new SpreadsheetCell());
  cell4->setValue(3.7);
  cout << "cell 4: " << cell4->getValue() << " " << cell4->getString() << endl;

  return 0;
}
