#include <algorithm>
#include <iostream>
#include <iterator>
#include <vector>
using namespace std;

template <typename Container>
void print(const Container& container, const string& separator = " ") {
  copy(cbegin(container), cend(container), ostream_iterator<int>(cout, separator.c_str()));
  cout << endl;
}

int main() {
  vector<int> myVector{3, 1, 6, 4, 9, 8, 5, 7, 6, 10};

  cout << "Original Sequence: ";
  print(myVector);

  while (true) {
    int num;

    cout << "Enter a number to find (0 to quit): ";
    cin >> num;
    if (num == 0) break;

    auto it1 = find(begin(myVector), end(myVector), num);    // type of it1 is vector<int>::iterator
    auto it2 = find(rbegin(myVector), rend(myVector), num);  // type of it2 is vector<int>::reverse_iterator

    if (it1 != end(myVector)) {
      cout << "Found " << num << " at position " << it1 - begin(myVector) << " going forward." << endl;
      cout << "Found " << num << " at position " << it2.base() - 1 - begin(myVector) << " going backward."
           << endl;

      cout << "Found " << num << " at position " << distance(begin(myVector), it1)
           << " going forward (using std::distance)." << endl;
      cout << "Found " << num << " at position " << (distance(begin(myVector), it2.base()) - 1)
           << " going backward (using std::distance)." << endl;
    } else {
      cout << "Failed to find " << num << endl;
    }
  }

  return 0;
}
