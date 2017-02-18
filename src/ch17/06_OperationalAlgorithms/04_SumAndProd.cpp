#include <algorithm>
#include <functional>
#include <iostream>
#include <vector>
using namespace std;

class SumAndProd : public unary_function<int, void> {
public:
  SumAndProd() : mSum{0}, mProd{1} {}
  void operator()(int elem);
  int getSum() const { return mSum; }
  int getProduct() const { return mProd; }

private:
  int mSum;
  int mProd;
};

void SumAndProd::operator()(int elem) {
  mSum += elem;
  mProd *= elem;
}

int main() {
  vector<int> myVector = {1, 2, 3, 4, 5};

  SumAndProd func;
  func = for_each(cbegin(myVector), cend(myVector), func);

  cout << "The sum is " << func.getSum() << endl;
  cout << "The product is " << func.getProduct() << endl;

  return 0;
}
