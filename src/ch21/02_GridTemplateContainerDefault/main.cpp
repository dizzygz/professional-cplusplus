#include "GridDefault.h"
#include <deque>
#include <iostream>
#include <vector>
using namespace std;

int main() {
  Grid<int> myIntVectorGrid;
  Grid<int, deque<int>> myIntDequeGrid;

  myIntVectorGrid.setElementAt(3, 4, 5);
  cout << myIntVectorGrid.getElementAt(3, 4) << endl;

  myIntDequeGrid.setElementAt(1, 2, 3);
  cout << myIntDequeGrid.getElementAt(1, 2) << endl;

  Grid<int> grid2(myIntVectorGrid);
  grid2 = myIntVectorGrid;

  // Grid<int, int> test; // WILL NOT COMPILE

  return 0;
}
