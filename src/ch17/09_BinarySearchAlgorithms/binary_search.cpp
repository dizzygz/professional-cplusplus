#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;

template <typename Container>
void print(const Container& container, const string& separator = " ") {
  for (const auto& element : container) {
    cout << element << separator;
  }
  cout << endl;
}

int main() {
  vector<int> vec{10, 4, 2, 6, 9, 3, 5, 7, 8, 1};

  cout << "Original numbers: " << endl;
  print(vec);

  // Sort the container
  sort(begin(vec), end(vec));

  cout << "Sorted numbers: " << endl;
  print(vec);

  while (true) {
    int num;
    cout << "Enter a number to find (0 to quit): ";
    cin >> num;
    if (num == 0) {
      break;
    }

    if (binary_search(cbegin(vec), cend(vec), num)) {
      cout << "That number is in the vector." << endl;
    } else {
      cout << "That number is not in the vector." << endl;
    }
  }

  return 0;
}
