#include "employee.h"
#include <iostream>
using namespace std;

int main() {
  // create and populate an employee
  Employee emp;

  emp.firstInitial = 'M';
  emp.lastInitial = 'G';
  emp.employeeNumber = 42;
  emp.salary = 80000;

  // output the values of an employee
  cout << "Employee: " << emp.firstInitial << emp.lastInitial << endl;
  cout << "Number: " << emp.employeeNumber << endl;
  cout << "Salary: $" << emp.salary << endl;

  return 0;
}
