#include "Spreadsheet.h"

void printSpreadsheet(Spreadsheet s) {
  (void)s;
  // code omitted for brevity
}

int main() {
  // Spreadsheet s1(4, 3);
  // printSpreadsheet(s1); // error. no copy

  Spreadsheet s1(2, 2), s2(4, 3);
  // s1 = s2; // error. no assign

  return 0;
}
