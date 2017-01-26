#ifndef MATRIX_H
#define MATRIX_H

#include "Element.h"
#include <cstddef>

class Matrix {
public:
  Matrix(size_t width, size_t height);
  virtual ~Matrix();

  size_t getWidth() const { return mWidth; }
  size_t getHeight() const { return mHeight; }

private:
  size_t mWidth;
  size_t mHeight;
  Element** mMatrix;
};

#endif /* MATRIX_H */
