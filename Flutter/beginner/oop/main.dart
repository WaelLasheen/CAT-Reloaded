import 'bank.dart';
import 'customer_account.dart';

void main() {
  Bank bank = Bank();
  CustomerAccount obj1 = CustomerAccount("Ahmed", 1000.0);
  CustomerAccount obj2 = CustomerAccount("Mohammed", 1000.0);
  bank..addCustomerAccount(obj1)..addCustomerAccount(obj2);
  bank.bankInfo();

  bank..deposit(obj1, 1000)..withdraw(obj1, 100)..withdraw(obj2, 1000)..info(obj1)..info(obj2);

}