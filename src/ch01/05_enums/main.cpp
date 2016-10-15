#include <iostream>
using namespace std;

enum class MyEnum { EnumValue1, EnumValue2 = 10, EnumValue3 };
enum class MyEnumLong : unsigned long { EnumValue1, EnumValue2 = 10, EnumValue3 };

int main() {
  cout << static_cast<int>(MyEnum::EnumValue2) << endl;
  cout << static_cast<int>(MyEnumLong::EnumValue2) << endl;

  MyEnum value1 = MyEnum::EnumValue1;
  if (value1 == MyEnum::EnumValue3) {
    cout << "we got an EnumValue3" << endl;
  } else {
    cout << "we got something else" << endl;
  }

  return 0;
}
