#include <cstddef>
#include <cstring>
#include <iostream>
using namespace std;

char* copyString(const char* str) {
  // char* result = new char[strlen(str)]; // BUG! Off by one!
  char* result = new char[strlen(str) + 1];
  strcpy(result, str);
  return result;
}

char* appendStrings(const char* str1, const char* str2, const char* str3) {
  char* result = new char[strlen(str1) + strlen(str2) + strlen(str3) + 1];
  strcpy(result, str1);
  strcat(result, str2);
  strcat(result, str3);
  return result;
}

int main() {
  // copy
  const char* str1 = "Hello";
  char* copy = copyString(str1);
  cout << copy << endl;
  delete[] copy;
  copy = nullptr;

  // append
  const char* str2 = " World";
  const char* str3 = "!";
  char* result = appendStrings(str1, str2, str3);
  cout << result << endl;
  delete[] result;
  result = nullptr;

  // strlen
  char text1[] = "abcdef";
  size_t s1 = sizeof(text1);  // is 7
  size_t s2 = strlen(text1);  // is 6
  cout << s1 << endl << s2 << endl;

  const char* text2 = "abcdef";
  size_t s3 = sizeof(text2);  // is platform-dependent (e.g. 4 bytes for x86, 8 bytes for x64)
  size_t s4 = strlen(text2);  // is 6
  cout << s3 << endl << s4 << endl;

  return 0;
}
