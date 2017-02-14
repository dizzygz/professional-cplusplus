#include "BankDB.h"
#include <iostream>
using namespace std;

int main() {
  BankDB db;

  db.addAccount(BankAccount(100, "Nicholas Solter"));
  db.addAccount(BankAccount(200, "Scott Kleper"));

  try {
    auto& acct = db.findAccount(100);
    cout << "Found account for " << acct.getClientName() << endl;
    acct.setClientName("Nicholas A. Solter");

    auto& acct2 = db.findAccount("Scott Kleper");
    cout << "Found account for " << acct2.getClientName() << endl;

    auto& acct3 = db.findAccount(1000);
    cout << "Found account for " << acct3.getClientName() << endl;
  } catch (const out_of_range&) {
    cout << "Unable to find account" << endl << endl;

    auto& acct = db.findAccount(100);
    cout << "By the way, account 100 is for " << acct.getClientName() << endl;
  }

  return 0;
}
