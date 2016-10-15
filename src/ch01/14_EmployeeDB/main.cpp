#include "Database.h"
#include <exception>
#include <iostream>
#include <stdexcept>
using namespace std;
using namespace Records;

int displayMenu();
void doHire(Database& db);
void doFire(Database& db);
void doPromote(Database& db);
void doDemote(Database& db);

int main() {
  Database db;

  bool done{false};
  while (!done) {
    int selection{displayMenu()};
    switch (selection) {
      case 1:
        doHire(db);
        break;
      case 2:
        doFire(db);
        break;
      case 3:
        doPromote(db);
        break;
      case 4:
        db.displayAll();
        break;
      case 5:
        db.displayCurrent();
        break;
      case 6:
        db.displayFormer();
        break;
      case 0:
        done = true;
        break;
      default:
        cerr << "Unknown command." << endl;
        break;
    }
  }

  return 0;
}

int displayMenu() {
  // Note:
  //   One important note is that this code assumes that the user will "play nice" and type a number when a
  //   number is requested.
  int selection{};

  cout << endl;
  cout << "Employee Database" << endl;
  cout << "-----------------" << endl;
  cout << "1) Hire a new employee" << endl;
  cout << "2) Fire an employee" << endl;
  cout << "3) Promote an employee" << endl;
  cout << "4) List all employees" << endl;
  cout << "5) List all current employees" << endl;
  cout << "6) List all former employees" << endl;
  cout << "0) Quit" << endl;
  cout << endl;
  cout << "---> ";

  cin >> selection;
  return selection;
}

void doHire(Database& db) {
  string firstName{}, lastName{};

  cout << "First name? ";
  cin >> firstName;
  cout << "Last name? ";
  cin >> lastName;

  try {
    db.addEmployee(firstName, lastName);
  } catch (const std::exception& ex) {
    cerr << "Unable to add new employee: " << ex.what() << endl;
  }
}

void doFire(Database& db) {
  int employeeNumber{};

  cout << "Employee number? ";
  cin >> employeeNumber;

  try {
    Employee& emp = db.getEmployee(employeeNumber);
    emp.fire();
    cout << "Employee " << employeeNumber << " terminated." << endl;
  } catch (const std::exception& ex) {
    cerr << "Unable to terminate employee: " << ex.what() << endl;
  }
}

void doPromote(Database& db) {
  int employeeNumber{}, raiseAmount{};

  cout << "Employee number? ";
  cin >> employeeNumber;
  cout << "How much of a raise? ";
  cin >> raiseAmount;

  try {
    Employee& emp = db.getEmployee(employeeNumber);
    emp.promote(raiseAmount);
  } catch (const std::exception& ex) {
    cerr << "Unable to promote employee: " << ex.what() << endl;
  }
}

void doDemote(Database& db) {
  int employeeNumber{}, demoteAmount{};

  cout << "Employee number? ";
  cin >> employeeNumber;
  cout << "How much of a demotion? ";
  cin >> demoteAmount;

  try {
    Employee& emp = db.getEmployee(employeeNumber);
    emp.demote(demoteAmount);
  } catch (const std::exception& ex) {
    cerr << "Unable to demote employee: " << ex.what() << endl;
  }
}
