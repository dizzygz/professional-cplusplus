#include "SpreadsheetCell.h"
#include <iostream>
using namespace std;

void testStackBaseDestructor() {
  SpreadsheetCell myCell(5);

  if (myCell.getValue() == 5) {
    SpreadsheetCell anotherCell(6);
  }  // anotherCell is destroyed as this block ends

  cout << "myCell: " << myCell.getValue() << endl;

  {
    SpreadsheetCell myCell2(4);
    SpreadsheetCell anotherCell2(5);  // myCell2 constructed before anotherCell2
  }                                   // anotherCell2 destroyed before myCell2
}  // myCell is destroyed as this block ends

void testHeapBasedDestructor() {
  SpreadsheetCell* cellPtr1 = new SpreadsheetCell(5);
  SpreadsheetCell* cellPtr2 = new SpreadsheetCell(6);

  cout << "cellPtr1: " << cellPtr1->getValue() << endl;
  cout << "cellPtr2: " << cellPtr2->getValue() << endl;

  delete cellPtr1;  // destroys cellPtr1
  cellPtr1 = nullptr;
}  // cellPtr2 is NOT destroyed because delete was not called on it

int main() {
  testStackBaseDestructor();
  cout << "--------------------" << endl;

  testHeapBasedDestructor();
  cout << "--------------------" << endl;

  return 0;
}
