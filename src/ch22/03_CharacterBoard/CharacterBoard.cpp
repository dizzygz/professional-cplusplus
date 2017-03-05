#include <cstddef>
#include <iostream>
using namespace std;

char** allocateCharacterBoard(size_t xDimension, size_t yDimension) {
  char** myArray = new char*[xDimension];  // Allocate first dimension

  for (size_t i = 0; i < xDimension; i++) {
    myArray[i] = new char[yDimension];  // Allocate ith subarray
  }

  return myArray;
}

void releaseCharacterBoard(char** myArray, size_t xDimension) {
  for (size_t i = 0; i < xDimension; i++) {
    delete[] myArray[i];  //  Delete ith subarray
  }

  delete[] myArray;  //  Delete first dimension
}

int main() {
  char** board = allocateCharacterBoard(7, 13);

  board[0][0] = 'X';
  board[3][5] = 'X';
  for (size_t x = 0; x < 7; ++x) {
    for (size_t y = 0; y < 13; ++y) {
      if (board[x][y] == 'X')
        cout << board[x][y] << " ";
      else
        cout << ". ";
    }
    cout << endl;
  }

  releaseCharacterBoard(board, 7);

  return 0;
}
