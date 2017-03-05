#include "TypeInference.h"
#include <iostream>
#include <string>
using namespace std;

MyInt MyInt::operator+(const MyString& rhs) const { return mValue + stoi(rhs.getString()); }

MyString MyString::operator+(const MyInt& rhs) const {
  string str = mString;
  str.append(to_string(rhs.getInt()));
  return str;
}

template <typename T1, typename T2, typename Result>
Result DoAddition(const T1& t1, const T2& t2) {
  return t1 + t2;
}

template <typename T1, typename T2>
auto DoAddition2(const T1& t1, const T2& t2) -> decltype(t1 + t2) {
  return t1 + t2;
}

// Using C++14 function return type deduction
template <typename T1, typename T2>
auto DoAddition3(const T1& t1, const T2& t2) {
  return t1 + t2;
}

int main() {
  MyInt i(4);
  MyString str("5");
  MyInt a = i + str;
  MyString b = str + i;

  cout << "a: " << a.getInt() << endl;
  cout << "b: " << b.getString() << endl;

  auto c = DoAddition<MyInt, MyString, MyInt>(i, str);
  cout << "c: " << c.getInt() << endl;

  auto d = DoAddition2(i, str);
  cout << "d: " << d.getInt() << endl;

  auto e = DoAddition2(str, i);
  cout << "e: " << e.getString() << endl;

  auto f = DoAddition3(i, str);
  cout << "f: " << f.getInt() << endl;

  auto g = DoAddition3(str, i);
  cout << "g: " << g.getString() << endl;

  return 0;
}
