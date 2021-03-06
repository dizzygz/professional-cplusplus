#ifndef GAMEBOARD_H
#define GAMEBOARD_H

#include <cstddef>

class GamePiece {};

class GameBoard {
public:
  // general-purpose GameBoard allows user to specify its dimensions
  explicit GameBoard(size_t inWidth = kDefaultWidth, size_t inHeight = kDefaultHeight);
  GameBoard(const GameBoard& src);  // Copy constructor
  virtual ~GameBoard();

  GameBoard& operator=(const GameBoard& rhs);  // Assignment operator

  void setPieceAt(size_t x, size_t y, const GamePiece& inPiece);
  GamePiece& getPieceAt(size_t x, size_t y);
  const GamePiece& getPieceAt(size_t x, size_t y) const;

  size_t getHeight() const { return mHeight; }
  size_t getWidth() const { return mWidth; }

  static const size_t kDefaultWidth = 100;
  static const size_t kDefaultHeight = 100;

private:
  void copyFrom(const GameBoard& src);
  void freeMemory();

  // Objects dynamically allocate space for the game pieces.
  GamePiece** mCells;
  size_t mWidth, mHeight;
};

#endif /* GAMEBOARD_H */
