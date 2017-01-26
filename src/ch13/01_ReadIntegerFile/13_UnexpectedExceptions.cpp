#include <exception>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

using namespace std;

void readIntegerFile(const string& fileName, vector<int>& dest) throw(invalid_argument, runtime_error) {
  (void)fileName;
  (void)dest;
  throw 5;
}

void myUnexpected() {
  cerr << "Unexpected exception!" << endl;
  throw runtime_error("");
}

int main() {
  vector<int> myInts;
  const string fileName = "IntegerFile.txt";

  unexpected_handler old_handler = set_unexpected(myUnexpected);
  try {
    readIntegerFile(fileName, myInts);
  } catch (const invalid_argument& e) {
    cerr << e.what() << endl;
    return 1;
  } catch (const runtime_error& e) {
    cerr << e.what() << endl;
    return 1;
  } catch (int x) {
    cerr << "Caught int " << x << endl;
  }
  set_unexpected(old_handler);

  for (const auto element : myInts) {
    cout << element << " ";
  }
  cout << endl;

  return 0;
}
