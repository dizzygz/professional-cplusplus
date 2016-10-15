#ifndef DATABASE_H
#define DATABASE_H

#include "Employee.h"
#include <iostream>
#include <vector>

namespace Records {
  const int kFirstEmployeeNumber{1000};

  class Database {
  public:
    Database();

    Employee& addEmployee(const std::string& firstName, const std::string& lastName);
    Employee& getEmployee(int employeeNumber);
    Employee& getEmployee(const std::string& firstName, const std::string& lastName);

    void displayAll() const;
    void displayCurrent() const;
    void displayFormer() const;

  private:
    std::vector<Employee> mEmployees;
    int mNextEmployeeNumber;
  };
}

#endif /* DATABASE_H */
