#include <cstddef>
#include <iostream>
#include <vector>

using namespace std;

vector<int> createVectorOfSize(size_t size) {
  vector<int> vec(size);
  int contents = 0;

  for (auto& i : vec) {
    i = contents++;
  }

  return vec;  // No overhead, move semantics!
}

int main() {
  vector<int> myVector;
  myVector = createVectorOfSize(123);

  cout << myVector[2] << endl;

  return 0;
}
