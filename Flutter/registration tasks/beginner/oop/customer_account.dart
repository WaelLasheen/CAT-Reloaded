class CustomerAccount{
  static int _cnt=0;
  late int _id;
  String _name;
  double _balance;

  CustomerAccount(this._name,this._balance){
    _id =++_cnt;
  }

  int get id => _id;
  void inquiry(){
    print("Your balance is :${_balance} L.E");
  }
  
  void deposit(double amount){
    _balance += amount;
  }

  void withdraw(double amount){
    if(amount > _balance){
      print("Sorry, but you don't have enough money in your balance");
      return;
    }

    _balance -= amount;
  }

  void info(){
    print("""
            ID:${_id}
            Name:${_name}
            Balance:${_balance}
          """);
  }
}