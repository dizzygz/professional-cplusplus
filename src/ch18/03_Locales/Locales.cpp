#include <iostream>
#include <locale>
#include <string>
using namespace std;

int main() {
  wcout.imbue(locale(""));
  wcout << "User's locale: " << 32767 << endl;

  wcout.imbue(locale("C"));
  wcout << "Default locale: " << 32767 << endl;

  wcout.imbue(locale("en_US.UTF8"));
  wcout << "en_US.UTF8: " << 32767 << endl;

  wcout << "-----------------------------------" << endl;

  locale loc("");
  if (loc.name().find("en_US") == string::npos && loc.name().find("United States") == string::npos) {
    wcout << L"Welcome non-U.S. English speaker!" << endl;
  } else {
    wcout << L"Welcome U.S. English speaker!" << endl;
  }

  return 0;
}
