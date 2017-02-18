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
  vector<int> vec1 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  vector<int> vecEven, vecOdd;

  vecEven.resize(vec1.size());
  vecOdd.resize(vec1.size());

  auto pairIters = partition_copy(cbegin(vec1), cend(vec1), begin(vecEven), begin(vecOdd),
                                  [](int i) { return i % 2 == 0; });

  vecEven.erase(pairIters.first, end(vecEven));
  vecOdd.erase(pairIters.second, end(vecOdd));

  cout << "Original numbers (Size = " << vec1.size() << "): ";
  print(vec1);

  cout << "Even numbers (Size = " << vecEven.size() << "): ";
  print(vecEven);

  cout << "Odd numbers (Size = " << vecOdd.size() << "): ";
  print(vecOdd);

  return 0;
}
