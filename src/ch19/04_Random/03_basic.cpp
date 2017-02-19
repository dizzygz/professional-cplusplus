#include <iostream>
#include <random>
using namespace std;

int main() {
  random_device rndDevice;
  mt19937 eng(rndDevice());
  uniform_int_distribution<int> dist(1, 99);
  cout << "Random number: " << dist(eng) << endl;

  for (int i = 1; i <= 10; ++i) {
    cout << i << ") " << dist(eng) << endl;
  }

  return 0;
}
