import 'customer_account.dart';

class Bank{
  static int _cnt=0;
  late int _id;
  List<CustomerAccount> _customerAccounts = [];       // for good practice it must to be hash table, but I'm lazy

  Bank(){
    _id = ++_cnt;
  }

  void addCustomerAccount(CustomerAccount customerAccount){
    if(_customerAccounts.any((e)=> e.id == customerAccount.id)){
      print("Customer account already exists");
      return;
    }

    _customerAccounts.add(customerAccount);
    print("Customer account added successfully");
  }

  void removeCustomerAccount(CustomerAccount customerAccount){
    if(_customerAccounts.any((e)=> e.id == customerAccount.id)){
      _customerAccounts.remove(customerAccount);
      print("Customer account removed successfully");
      return;
    }

    print("Customer account not found");
  }

  void inquiry(CustomerAccount customerAccount){
    customerAccount.inquiry();
  }

  void deposit(CustomerAccount customerAccount, double amount){
    customerAccount.deposit(amount);
  }

  void withdraw(CustomerAccount customerAccount, double amount){
    customerAccount.withdraw(amount);
  }

  void info(CustomerAccount customerAccount){
    customerAccount.info();
  }

  void bankInfo(){
    print("""
            BankId: ${_id}
            Number of customer: ${_customerAccounts.length}
          """);
  }
}