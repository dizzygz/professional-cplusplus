#include "BankDB.h"
#include <stdexcept>
#include <utility>
using namespace std;

bool BankDB::addAccount(const BankAccount& acct) {
  // Do the actual insert, using the account number as the key
  auto res = mAccounts.insert(make_pair(acct.getAcctNum(), acct));

  // Return the bool field of the pair specifying success or failure
  return res.second;
}

void BankDB::deleteAccount(int acctNum) { mAccounts.erase(acctNum); }

BankAccount& BankDB::findAccount(int acctNum) {
  // Finding an element via its key can be done with find()
  auto it = mAccounts.find(acctNum);

  if (it == end(mAccounts)) {
    throw out_of_range("No account with that number.");
  }

  // Remember that iterators into maps refer to pairs of key/value
  return it->second;
}

BankAccount& BankDB::findAccount(const std::string& name) {
  // Finding an element by a non-key attribute requires a linear search through the elements.
  for (auto& p : mAccounts) {
    if (p.second.getClientName() == name) {
      return p.second;
    }
  }

  throw out_of_range("No account with that name.");
}

void BankDB::mergeDatabase(BankDB& db) {
  // Just insert copies of all the accounts in the old db to the new database.
  mAccounts.insert(begin(db.mAccounts), end(db.mAccounts));

  // Now delete all the accounts in the old database.
  db.mAccounts.clear();
}
