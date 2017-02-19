#include <iostream>
#include <random>
using namespace std;

int main() {
  random_device rnd;
  cout << "Entropy: " << rnd.entropy() << endl;
  cout << "Min value: " << rnd.min() << ", Max value: " << rnd.max() << endl;
  cout << "Random number: " << rnd() << endl;

  for (int i = 1; i <= 10; ++i) {
    cout << i << ") " << rnd() << endl;
  }

  return 0;
}
