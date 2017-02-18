#include <iostream>
#include <numeric>
#include <vector>

using namespace std;

int main() {
  vector<int> v1{1, 2, 3, 4};
  vector<int> v2{9, 8, 7, 6};

  // (1*9) + (2*8) + (3*7) + (4*6) = 70
  cout << inner_product(cbegin(v1), cend(v1), cbegin(v2), 0) << endl;

  return 0;
}
