#include <complex>
#include <cstddef>
#include <iostream>
#include <typeinfo>

using namespace std;

// Cooked _i literal
complex<double> operator"" _i(long double d) { return complex<double>(0, d); }

// Raw _i literal
// complex<double> operator"" _i(const char* p)
//{
//    // Implementation omitted; it requires parsing the C-style
//    // string and converting it to a complex number.
//}

// Cooked _s literal
string operator"" _s(const char* str, size_t len) { return string(str, len); }

int main() {
  // Cooked _i literal
  complex<double> c1 = 9.634_i;
  auto c2 = 1.23_i;  // c2 will have as type complex<double>
  cout << "c1: " << c1 << ", Type: " << typeid(decltype(c1)).name() << endl;
  cout << "c2: " << c2 << ", Type: " << typeid(decltype(c2)).name() << endl;

  // Cooked _s literal
  string str1 = "Hello World"_s;
  auto str2 = "Hello World"_s;  // str2 will have as type std::string
  auto str3 = "Hello World";    // str3 will have as type const char*
  cout << "str1: " << str1 << ", Type: " << typeid(decltype(str1)).name() << endl;
  cout << "str2: " << str2 << ", Type: " << typeid(decltype(str2)).name() << endl;
  cout << "str3: " << str3 << ", Type: " << typeid(decltype(str3)).name() << endl;

  return 0;
}
