#include <iostream>
#include <queue>
using namespace std;

int main() {
  priority_queue<int> myQueue;
  myQueue.push(3);
  myQueue.push(4);
  myQueue.push(2);
  myQueue.push(1);
  myQueue.push(5);

  while (!myQueue.empty()) {
    cout << myQueue.top() << " ";
    myQueue.pop();
  }
  cout << endl;

  return 0;
}
