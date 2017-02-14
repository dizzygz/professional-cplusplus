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
  vector<string> stringVector(10, "hello");

  for (auto it = begin(stringVector); it != end(stringVector); ++it) {
    it->append(" there");
  }

  /*
    // Using Range-Based for loop
    for (auto& str : stringVector) {
      str.append(" there");
    }
  */

  print("StringVector: "s, stringVector, " | ");
  return 0;
}
