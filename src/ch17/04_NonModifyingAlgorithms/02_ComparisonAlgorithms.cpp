#include <algorithm>
#include <iostream>
#include <list>
#include <string>
#include <vector>
using namespace std;

template <typename Container>
void print(const string& header, const Container& container, const string& separator = " ") {
  cout << header << "\t";
  for (const auto& element : container) {
    cout << element << separator;
  }
  cout << endl;
}

int main() {
  vector<int> myVector = {5, 6, 7, 0};
  list<int> myList = {5, 6, 9, 8, 0};

  print("Vector:", myVector);
  print("List:", myList);

  // Compare the two containers
  if (myList.size() == myVector.size() && equal(cbegin(myVector), cend(myVector), cbegin(myList))) {
    cout << "The two containers have equal elements" << endl;
  } else {
    if (myList.size() < myVector.size()) {
      cout << "Sorry, the list is not long enough." << endl;
      return 1;
    } else {
      // If the containers were not equal, find out why not
      auto miss = mismatch(cbegin(myVector), cend(myVector), cbegin(myList));
      cout << "The following initial elements are the same in the vector and the list:" << endl;
      for (auto i = cbegin(myVector); i != miss.first; ++i) {
        cout << *i << '\t';
      }
      cout << endl;
    }
  }

  // C++14: equal() and mismatch() accepting four iterators
  if (equal(cbegin(myVector), cend(myVector), cbegin(myList), cend(myList))) {
    cout << "The two containers have equal elements" << endl;
  } else {
    // If the containers were not equal, find out why not
    auto miss = mismatch(cbegin(myVector), cend(myVector), cbegin(myList), cend(myList));
    cout << "The following initial elements are the same in "
         << "the vector and the list:" << endl;
    for (auto i = cbegin(myVector); i != miss.first; ++i) {
      cout << *i << '\t';
    }
    cout << endl;
  }

  // Now order them
  if (lexicographical_compare(cbegin(myVector), cend(myVector), cbegin(myList), cend(myList))) {
    cout << "The vector is lexicographically first." << endl;
  } else {
    cout << "The list is lexicographically first." << endl;
  }

  return 0;
}
