#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;

int main() {
  vector<int> myVector = {1, 2, 3, 4, 5};

  int sum = 0;
  int prod = 1;
  for_each(cbegin(myVector), cend(myVector), [&sum, &prod](int i) {
    sum += i;
    prod *= i;
  });

  cout << "The sum is " << sum << endl;
  cout << "The product is " << prod << endl;

  return 0;
}
