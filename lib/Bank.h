#ifndef BANK_H
#define BANK_H
#include <vector>
#include "Customer.h"
using namespace std;

class Bank{
  private:
    vector<Customer> accounts;
  public:
    void addCustomer(Customer* account);
};

#endif // !BANK_H
