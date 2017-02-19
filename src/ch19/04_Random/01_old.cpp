#include <ctime>
#include <iostream>
using namespace std;

int getRandom(int min, int max) { return (rand() % static_cast<int>(max + 1 - min)) + min; }

int main() {
  srand(static_cast<unsigned int>(time(nullptr)));

  cout << rand() << endl;

  for (int i = 0; i < 10; ++i) {
    cout << "Random from 1 to 6: " << getRandom(1, 6) << endl;
  }

  return 0;
}
