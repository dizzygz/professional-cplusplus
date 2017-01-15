#include <iostream>
using namespace std;

void print(int x, int y) { cout << "x: " << x << ", y: " << y << endl; }

void swapReferences(int& first, int& second) {
  int temp = first;
  first = second;
  second = temp;
}

int main() {
  int x = 5, y = 6;
  print(x, y);

  swap(x, y);
  print(x, y);

  //  swap(3, 4); // DOES NOT COMPILE

  int *xp = &x, *yp = &y;
  swap(*xp, *yp);
  print(x, y);

  return 0;
}
