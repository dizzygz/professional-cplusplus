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
  dataMap[1] = Data{1};
  dataMap[2] = Data{2};
  dataMap.insert(make_pair(3, Data{3}));

  for (const auto& pair : dataMap) {
    cout << pair.first << ": " << pair.second.getVal() << endl;
  }

  return 0;
}
