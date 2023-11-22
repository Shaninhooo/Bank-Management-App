#ifndef CUSTOMER_H
#define CUSTOMER_H
#include <iostream>

class Customer {
  private:
    double Savings;
    double Personal;
  public:
  void transfer(double amount);
};


#endif // !CUSTOMER_H