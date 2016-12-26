#include "EfficientCarMilesEstimator.h"
#include <iostream>

using namespace std;

void testMilesEstimator() {
  MilesEstimator myMilesEstimator;

  myMilesEstimator.setGallonsLeft(2);
  cout << "Normal estimator can go " << myMilesEstimator.getMilesLeft() << " more miles." << endl;
}

void testEfficientEstimator() {
  EfficientCarMilesEstimator myEstimator;

  myEstimator.setGallonsLeft(2);
  cout << "Efficient estimator can go " << myEstimator.getMilesLeft() << " more miles." << endl;
}

void testPolymorphism() {
  EfficientCarMilesEstimator eme;
  MilesEstimator& me = eme;

  me.setGallonsLeft(2);
  cout << "Efficient estimator can go " << me.getMilesLeft() << " more miles." << endl;
}

int main() {
  testMilesEstimator();
  cout << "---------------------------------------" << endl;

  testEfficientEstimator();
  cout << "---------------------------------------" << endl;

  testPolymorphism();
  cout << "---------------------------------------" << endl;

  return 0;
}
