#include "BuddyList.h"
#include <iostream>
using namespace std;

void printFriendsFor(const BuddyList& buddies, const string& name) {
  auto buds = buddies.getBuddies(name);

  cout << name << "'s friends: " << endl;
  for (const auto& bud : buds) {
    cout << "\t" << bud << endl;
  }
}

int main() {
  BuddyList buddies;

  buddies.addBuddy("Harry Potter", "Ron Weasley");
  buddies.addBuddy("Harry Potter", "Hermione Granger");
  buddies.addBuddy("Harry Potter", "Hagrid");
  buddies.addBuddy("Harry Potter", "Draco Malfoy");
  // That's not right! Remove Draco.
  buddies.removeBuddy("Harry Potter", "Draco Malfoy");

  buddies.addBuddy("Hagrid", "Harry Potter");
  buddies.addBuddy("Hagrid", "Ron Weasley");
  buddies.addBuddy("Hagrid", "Hermione Granger");

  printFriendsFor(buddies, "Harry Potter");
  printFriendsFor(buddies, "Hagrid");

  return 0;
}
