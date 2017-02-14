#include <iostream>
#include <string>
#include <vector>
using namespace std;

template <typename Container>
void print(const string& header, const Container& container, const string& separator = " ") {
  cout << header;
  for (const auto& element : container) {
    cout << element << separator;
  }
  cout << endl;
}

int main() {
  vector<int> intVector(10);

  auto it = begin(intVector);
  it += 5;
  --it;
  *it = 4;

  print("IntVector: "s, intVector);

  return 0;
}
