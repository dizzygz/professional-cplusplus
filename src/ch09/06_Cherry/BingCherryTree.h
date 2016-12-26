#ifndef BINGCHERRYTREE_H
#define BINGCHERRYTREE_H

#include "BingCherry.h"
#include "CherryTree.h"
#include <memory>

class BingCherryTree : public CherryTree {
public:
  BingCherryTree() {}

  virtual BingCherry* pick() override {
    auto theCherry = std::make_unique<BingCherry>();
    theCherry->polish();
    return theCherry.release();
  }
};

#endif /* BINGCHERRYTREE_H */
