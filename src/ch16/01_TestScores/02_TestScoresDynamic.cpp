#include <cstddef>
#include <iostream>
#include <limits>
#include <vector>
using namespace std;

int main() {
  vector<double> doubleVector;                       // Create a vector with zero elements.
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
  for (auto& element : doubleVector) {
    element /= max;
    cout << element << " ";
  }
  cout << endl;
  return 0;
}
