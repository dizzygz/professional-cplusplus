#include <iostream>
using namespace std;

int main() {
  // int uninitializedInt; // most compilers show warning!
  // cout << uninitializedInt << " is a random value" << endl;

  int initializedInt{7};
  cout << initializedInt << " was assigned an initial value" << endl;

  cout << endl;

  float myFloat{3.14};
  cout << myFloat << endl;
  cout << (int)myFloat << endl;
  cout << int(myFloat) << endl;
  cout << static_cast<int>(myFloat) << endl;

  cout << endl;

  auto decimalLiteral{123};
  auto octalLiteral{0173};
  auto hexadecimalLiteral{0x7B};
  auto binaryLiteral{0b1111011};
  auto floatingPointLiteral{3.14f};
  auto doublePointLiteral{3.14};

  cout << "Decimal: " << decimalLiteral << endl;
  cout << "Octal:   " << octalLiteral << endl;
  cout << "Hex:     " << hexadecimalLiteral << endl;
  cout << "Binary:  " << binaryLiteral << endl;
  cout << "Float:   " << floatingPointLiteral << endl;
  cout << "Dobule:  " << doublePointLiteral << endl;

  return 0;
}
