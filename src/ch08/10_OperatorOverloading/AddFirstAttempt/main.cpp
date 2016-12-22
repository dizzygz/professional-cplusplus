#include "SpreadsheetCell.h"

#include <iostream>
using namespace std;

int main() {
  SpreadsheetCell myCell(4), anotherCell(5);
  SpreadsheetCell aThirdCell = myCell.add(anotherCell);

  cout << "First Cell: " << myCell.getValue() << endl;
  cout << "Second Cell: " << anotherCell.getValue() << endl;
  cout << "Sum: " << aThirdCell.getValue() << endl;

  return 0;
}
