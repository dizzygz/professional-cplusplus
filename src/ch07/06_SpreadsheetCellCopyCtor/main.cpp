#include "SpreadsheetCell.h"
#include <iostream>
using namespace std;

int main() {
  SpreadsheetCell myCell;
  string name = "heading one";
  myCell.setString(name);
  cout << "cell: " << myCell.getString() << endl;

  SpreadsheetCell myCell2(4);
  SpreadsheetCell myCell3(myCell2);  // myCell3 has the same values as myCell2
  cout << "cell: " << myCell2.getValue() << endl;
  cout << "cell: " << myCell3.getValue() << endl;

  return 0;
}
