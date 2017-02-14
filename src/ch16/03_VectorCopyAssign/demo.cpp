#include <iostream>
#include <string>
#include <vector>
using namespace std;

void printVector(const string& header, const vector<int>& v) {
  cout << header << ": ";
  for (const auto& e : v) {
    cout << e << " ";
  }
  cout << endl;
}

int main() {
  vector<int> intVector(10, 10);
  printVector("IntVector"s, intVector);
  intVector.assign(5, 100);
  printVector("IntVector"s, intVector);
  intVector.assign({1, 2, 3, 4});  // C++11 initializer_list
  printVector("IntVector"s, intVector);

  cout << "------------------------------------" << endl;

  vector<int> vectorOne(10, 10);
  vector<int> vectorTwo(5, 100);
  printVector("VectorOne"s, vectorOne);
  printVector("VectorTwo"s, vectorTwo);

  vectorOne.swap(vectorTwo);
  // vectorOne now has 5 elements with the value 100.
  // vectorTwo now has 10 elements with the value 0

  printVector("VectorOne"s, vectorOne);
  printVector("VectorTwo"s, vectorTwo);

  return 0;
}
