#ifndef EVENTSEQUENCE_H
#define EVENTSEQUENCE_H

#include <initializer_list>
#include <vector>

class EvenSequence {
public:
  EvenSequence(std::initializer_list<double> args);
  void dump() const;

private:
  std::vector<double> mSequence;
};

#endif /* EVENTSEQUENCE_H */
