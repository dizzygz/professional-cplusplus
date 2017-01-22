#include <iostream>
#include <string>
using namespace std;

void intInput() {
  int userInput{};

  cout << "Please, input an integer: ";
  cin >> userInput;
  cout << "User input was: " << userInput << endl;
}

void stringInput() {
  string userInput{};

  cout << "Please, input a string: ";
  cin >> userInput;
  cout << "User input was: " << userInput << endl;
}

void getReservationData() {
  string guestName{};
  int partySize{};

  cout << "Name and number of guests: ";
  cin >> guestName >> partySize;
  cout << "Thank you, " << guestName << "." << endl;

  if (partySize > 10) {
    cout << "An extra gratuity will apply." << endl;
  }
}

int main() {
  intInput();
  cout << "\n\n";

  stringInput();
  cout << "\n\n";

  getReservationData();
  return 0;
}
