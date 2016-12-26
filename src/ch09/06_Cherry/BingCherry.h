#ifndef BINGCHERRY_H
#define BINGCHERRY_H

#include "Cherry.h"
#include <iostream>

class BingCherry : public Cherry {
public:
  BingCherry() {}

  virtual void printType() override { std::cout << "I am a Bing Cherry" << std::endl; }

  virtual void polish() {}
};

#endif /* BINGCHERRY_H */
