#ifndef CHERRY_H
#define CHERRY_H

#include <iostream>

class Cherry {
public:
  Cherry() {}

  virtual void printType() { std::cout << "I am a Cherry" << std::endl; }
};

#endif /* CHERRY_H */
