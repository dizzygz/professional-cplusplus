#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;

template <typename Container>
void print(const Container& container, const string& separator = " ") {
  for (const auto& element : container) {
    cout << element << separator;
  }
  cout << endl;
}

int main() {
  vector<int> vectorOne = {5, 4, 3, 2, 1};
  vector<int> vectorTwo = {10, 9, 8, 7, 6, 5};
  vector<int> vectorMerged;

  // Sort both containers
  sort(begin(vectorOne), end(vectorOne));
  sort(begin(vectorTwo), end(vectorTwo));

  // Make sure the destination vector is large enough to hold the values
  // from both source vectors.
  vectorMerged.resize(vectorOne.size() + vectorTwo.size());

  merge(cbegin(vectorOne), cend(vectorOne), cbegin(vectorTwo), cend(vectorTwo), begin(vectorMerged));

  cout << "Vector 1: ";
  print(vectorOne);

  cout << "Vector 2: ";
  print(vectorTwo);

  cout << "Merged vector: ";
  print(vectorMerged);

  return 0;
}
