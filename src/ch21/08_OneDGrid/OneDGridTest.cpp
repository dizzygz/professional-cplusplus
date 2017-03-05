#include "OneDGrid.h"
#include <iostream>
using namespace std;

int main() {
  OneDGrid<int> singleDGrid;
  OneDGrid<OneDGrid<int>> twoDGrid;
  OneDGrid<OneDGrid<OneDGrid<int>>> threeDGrid;

  singleDGrid[3] = 5;
  twoDGrid[3][3] = 5;
  threeDGrid[3][3][3] = 5;

  cout << "singleDGrid[3] = " << singleDGrid[3] << endl;
  cout << "twoDGrid[3][3] = " << twoDGrid[3][3] << endl;
  cout << "threeDGrid[3][3][3] = " << threeDGrid[3][3][3] << endl;
  cout << "threeDGrid[1][1][1] = " << threeDGrid[1][1][1] << endl;

  return 0;
}
