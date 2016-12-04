#include "EvenSequence.h"
#include <iostream>
#include <stdexcept>
using namespace std;

EvenSequence::EvenSequence(initializer_list<double> args) {
  if (args.size() % 2 != 0) {
    throw invalid_argument("initializer_list should contain even number of elements.");
  }

  mSequence.reserve(args.size());
  mSequence.insert(cend(mSequence), cbegin(args), cend(args));
  // for (auto value : args) {
  //   mSequence.push_back(value);
  // }
}

void EvenSequence::dump() const {
  for (const auto& value : mSequence) {
    cout << value << ", ";
  }

  cout << endl;
}
