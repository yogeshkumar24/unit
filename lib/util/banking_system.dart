class BankingSystem {
  int balance = 0;
  bool isAccountOpen = false;

  getAmount() {
    return balance;
  }

  openAccount(int amount) {
    if (!isAccountOpen) {
      isAccountOpen = true;
      balance = balance + amount;
    } else if (balance > 0) {
      throw Exception(alreadyOpen);
    } else {
      throw Exception(openAccount);
    }
  }

  depositsMoney(int amount) {
    if (isAccountOpen) {
      balance = balance + amount;
    } else {
      throw Exception(openAccount);
    }
  }

  widhdrowMoney(int amount) {
    if (!isAccountOpen) {
      throw Exception(openAccount);
    } else if (amount > balance) {
      throw Exception(lessBalance);
    } else {
      balance = balance - amount;
    }
  }
}

String openAccount = 'Please open account first';
String lessBalance = 'Insufficient balance!';
String alreadyOpen = 'Account Already Opened.';
