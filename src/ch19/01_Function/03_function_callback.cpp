#include <algorithm>
#include <functional>
#include <iostream>
#include <numeric>
#include <vector>
using namespace std;

void process(const vector<int>& vec, function<void(int)> f) {
  for (auto& i : vec) {
    f(i);
  }
}

void print(int num) { cout << num << "  "; }

int main() {
  vector<int> vec(10);
  iota(begin(vec), end(vec), 0);

  process(vec, print);
  cout << endl;

  int sum = 0;
  process(vec, [&sum](int num) { sum += num; });
  cout << "sum = " << sum << endl;

  return 0;
}
