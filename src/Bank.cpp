#include "../lib/Bank.h"

void Bank::addCustomer(Customer* account) {
  accounts.push_back(*account);
};