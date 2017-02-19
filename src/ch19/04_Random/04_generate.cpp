#include <algorithm>
#include <functional>
#include <iostream>
#include <random>
#include <vector>
using namespace std;

int main() {
  random_device rndDevice;
  mt19937 eng(rndDevice());
  uniform_int_distribution<int> dist(1, 99);

  auto gen = std::bind(dist, eng);

  vector<int> vec(10);
  generate(begin(vec), end(vec), gen);

  int cnt{0};
  for (const auto& i : vec) {
    cout << ++cnt << ") " << i << endl;
  }

  return 0;
}
