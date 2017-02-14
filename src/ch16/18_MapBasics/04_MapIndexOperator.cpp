#include <iostream>
#include <map>
using namespace std;

class Data {
public:
  explicit Data(int val = 0) { mVal = val; }
  int getVal() const { return mVal; }
  void setVal(int val) { mVal = val; }

private:
  int mVal;
};

int main() {
  map<int, Data> dataMap;
  dataMap[1] = Data(4);
  dataMap[1] = Data(6);  // replaces the element with key 1

  for (const auto& pair : dataMap) {
    cout << pair.first << ": " << pair.second.getVal() << endl;
  }

  return 0;
}
