#include "EvenSequence.h"
#include <iostream>
#include <stdexcept>
using namespace std;

int main() {
  EvenSequence p1 = {1.0, 2.0, 3.0, 4.0, 5.0, 6.0};
  p1.dump();

  try {
    EvenSequence p2 = {1.0, 2.0, 3.0};
  } catch (const invalid_argument& ex) {
    cout << ex.what() << endl;
  }

  return 0;
}
