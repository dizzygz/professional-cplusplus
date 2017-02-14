#include <cstddef>
#include <iostream>
#include <limits>
#include <vector>
using namespace std;

int main() {
  vector<double> doubleVector;
  double max = -numeric_limits<double>::infinity();  // Initialize max to smallest number

  for (size_t i = 1; true; i++) {
    double temp;
    cout << "Enter score " << i << " (-1 to stop): ";
    cin >> temp;
    if (temp == -1) {
      break;
    }
    doubleVector.push_back(temp);
    if (temp > max) {
      max = temp;
    }
  }

  max /= 100.0;

  for (vector<double>::iterator iter = begin(doubleVector); iter != end(doubleVector); ++iter) {
    *iter /= max;
    cout << *iter << " ";
  }
  cout << endl;

  /*
    // Using C++11 auto keyword
    for (auto iter = begin(doubleVector); iter != end(doubleVector); ++iter) {
      *iter /= max;
      cout << *iter << " ";
    }
    cout << endl;
  */

  return 0;
}
