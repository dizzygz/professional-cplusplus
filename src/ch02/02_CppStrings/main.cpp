#include <iostream>
#include <string>
#include <typeinfo>
using namespace std;

void example() {
  string myString = "hello";

  myString += ", there";

  string myOtherString = myString;

  if (myString == myOtherString) {
    myOtherString[0] = 'H';
  }

  cout << myString << endl;
  cout << myOtherString << endl;
}

void stringLiterals() {
  auto str1 = "Hello World";   // string1 will be a const char*
  auto str2 = "Hello World"s;  // string2 will be an std::string
  cout << str1 << " (" << typeid(str1).name() << ")" << endl;
  cout << str2 << " (" << typeid(str2).name() << ")" << endl;
}

void numericConversion() {
  long double d = 3.14L;
  string s1 = to_string(d);  // overloads for every type
  cout << s1 << endl;

  const string s2 = "1234";
  int i = stoi(s2);  // also: stol, stoul, stoll, stoull, stof, stod, stold
  cout << i << endl;
}

void rawStringLiteral() {
  string str1 = "Hello \"World\"!";
  string str2 = R"(Hello "World"!)";
  string str3 = R"(Line 1
Line2 with \t)";
  string str4 = R"-(The characters )" are embedded in this string)-";

  cout << "str1: " << str1 << endl;
  cout << "str2: " << str2 << endl;
  cout << "str3: " << str3 << endl;
  cout << "str4: " << str4 << endl;
}

int main() {
  example();
  cout << "-------------" << endl;

  stringLiterals();
  cout << "-------------" << endl;

  numericConversion();
  cout << "-------------" << endl;

  rawStringLiteral();
  cout << "-------------" << endl;

  return 0;
}
