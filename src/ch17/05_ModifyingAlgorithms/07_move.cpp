#include <algorithm>
#include <iostream>
#include <string>
#include <vector>
using namespace std;

class MyClass {
public:
  MyClass() = default;
  MyClass(const MyClass& src) = default;
  MyClass(const string& str) : mStr(str) {}

  // Move assignment operator
  MyClass& operator=(MyClass&& rhs) noexcept {
    if (this == &rhs) return *this;
    mStr = std::move(rhs.mStr);
    cout << "Move operator= (mStr=" << mStr << ")" << endl;
    return *this;
  }

  string getString() const { return mStr; }

private:
  string mStr;
};

void print(const vector<MyClass>& vec) {
  for (const auto& e : vec) {
    cout << e.getString() << " ";
  }
  cout << endl;
}

int main() {
  vector<MyClass> vecSrc{MyClass("a"), MyClass("b"), MyClass("c")};
  vector<MyClass> vecDst(vecSrc.size());

  cout << "Before move:\n";
  cout << "vecSrc(" << vecSrc.size() << "): ";
  print(vecSrc);
  cout << "vecDst(" << vecDst.size() << "): ";
  print(vecDst);

  move(begin(vecSrc), end(vecSrc), begin(vecDst));

  cout << "After move:\n";
  cout << "vecSrc(" << vecSrc.size() << "): ";
  print(vecSrc);
  cout << "vecDst(" << vecDst.size() << "): ";
  print(vecDst);

  return 0;
}
