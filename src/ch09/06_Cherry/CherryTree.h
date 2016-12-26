#ifndef CHERRYTREE_H
#define CHERRYTREE_H

#include "Cherry.h"

class CherryTree {
public:
  CherryTree() {}

  virtual Cherry* pick() { return new Cherry(); }
};

#endif /* CHERRYTREE_H */
