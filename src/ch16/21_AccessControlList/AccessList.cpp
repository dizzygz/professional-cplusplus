#include "AccessList.h"
using namespace std;

AccessList::AccessList(const initializer_list<string>& initlst) {
  for (auto& user : initlst) {
    addUser(user);
  }
}

void AccessList::addUser(const std::string& user) { mAllowed.insert(user); }

void AccessList::removeUser(const std::string& user) { mAllowed.erase(user); }

bool AccessList::isAllowed(const std::string& user) const { return (mAllowed.count(user) != 0); }

list<string> AccessList::getAllUsers() const {
  list<string> users;
  users.insert(end(users), begin(mAllowed), end(mAllowed));
  return users;
}
