#include "../lib/Customer.h"

Customer::Customer(string firstName, string lastName) {
  this->lastName = lastName;
  this->firstName = firstName;
};

void Customer::transferToPersonal(double amount) {
  Savings -= amount;
  Personal += amount;
}

void Customer::transferToSavings(double amount) {
  Personal -= amount;
  Savings += amount;
}

double Customer::get_savings() {
  return Savings;
};

double Customer::get_personal() {
  return Personal;
};