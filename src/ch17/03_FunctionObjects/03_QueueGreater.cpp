#include <functional>
#include <iostream>
#include <queue>
using namespace std;

int main() {
  priority_queue<int, vector<int>, greater<>> myQueue;  // C++14 transparent function object
  // priority_queue<int, vector<int>, greater<int>> myQueue;	// Pre-C++14

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
