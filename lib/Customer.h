#ifndef CUSTOMER_H
#define CUSTOMER_H
#include <iostream>
using namespace std;

class Customer {
  private:
    string firstName;
    string lastName;
    double Savings;
    double Personal;
  public:
  Customer(string firstName, string lastName);
  double get_savings();
  double get_personal();
  void set_savings();
  void set_personal();
  void transferToSavings(double amount);
  void transferToPersonal(double amount);
};


#endif // !CUSTOMER_H