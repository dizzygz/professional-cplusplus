#include <iostream>
using namespace std;

int main() {
  char board[3][3];
  // Test code
  board[0][0] = 'X';  // X puts marker in position (0,0).
  board[2][1] = 'O';  // O puts marker in position (2,1).

  for (size_t x = 0; x < 3; ++x) {
    for (size_t y = 0; y < 3; ++y) {
      if ((board[x][y] == 'X') || (board[x][y] == 'O'))
        cout << board[x][y] << " ";
      else
        cout << ". ";
    }
    cout << endl;
  }

  return 0;
}
