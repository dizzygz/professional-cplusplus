#include "BingCherry.h"
#include "BingCherryTree.h"
#include <iostream>
#include <memory>

int main() {
  BingCherryTree theTree;
  std::unique_ptr<Cherry> theCherry(theTree.pick());
  theCherry->printType();

  return 0;
}
