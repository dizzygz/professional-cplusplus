#include "AirlineTicket.h"
#include <iostream>
#include <memory>
using namespace std;

int main() {
  int cost{};

  // Stack-bases AirlineTicket
  AirlineTicket myTicket1;
  myTicket1.setPassengerName("Sherman T. Socketwrench");
  myTicket1.setNumberOfMiles(700);
  cost = myTicket1.calculatePriceInDollars();
  cout << "This ticket will cost $" << cost << endl;

  // Heap-based AirlineTicket with smart pointer
  auto myTicket2 = make_unique<AirlineTicket>();
  myTicket2->setPassengerName("Laudimore M. Hallidue");
  myTicket2->setNumberOfMiles(2000);
  myTicket2->setHasEliteSuperRewardsStatus(true);
  cost = myTicket2->calculatePriceInDollars();
  cout << "This other ticket will cost $" << cost << endl;
  // No need to delete myTicket2, happens automatically

  // Heap-based AirlineTicket without smart pointer (not recommended)
  AirlineTicket* myTicket3 = new AirlineTicket();
  myTicket3->setPassengerName("Julio C. Villasante");
  myTicket3->setNumberOfMiles(1000);
  cost = myTicket3->calculatePriceInDollars();
  cout << "This other ticket will cost $" << cost << endl;
  delete myTicket3;  // delete the heap object!
  myTicket3 = nullptr;

  return 0;
}
