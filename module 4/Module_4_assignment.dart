//https://replit.com/@FahadIslam3/Module4Assignment#main.dart
abstract class Account {
  late int accountNumber;

  late double balance;

  Account(this.accountNumber, this.balance);

  void deposite(double amount) {
    //adds the specified amount to account balance
    balance += amount;
    print('deposit:$amount');
    print('Balance :$balance');
  }

  void withdraw(double amount);

// {
//   //abstract method that deducts the specified amount from the account balance,
//   return 454;
// }
  void profile();
}

class SavingAccount extends Account {
  late double interestRate;

  SavingAccount(super.accountNumber, super.balance, this.interestRate);

  //
  // void profile() {
  //   print('Your account number: $accountNumber');
  //   print('Your balance: $balance');
  //   print('Your interest: $interestRate%');
  // }
  @override
  void profile() {
    print('Your account number: $accountNumber');
    print('Your balance: $balance');
    print('Your interest: $interestRate%');
  }

  //● Create an instance of the SavingsAccount class by providing values for the account number, initial balance, and interest rate.
  @override
  void withdraw(double amount) {
    if (balance > amount) {
      double current = (balance - amount);
      print('withdraw amount: $amount');
      print('remaining balance $current');
      double x  = (interestRate * current) / 100;
      balance = current + x;
      print('current balance with interest: $balance');
    } else {
      print('Insufficient balance');
    }
  }

  @override
  void deposite(double amount) {
    super.deposite(amount);
    // print(amount);
  }
}

class CurrentAccount extends Account {
  late double overdraftLimit;

  CurrentAccount(super.acountNumber, super.balance, this.overdraftLimit);

  // void profile() {
  //   print('\nfrom Current account..............');
  //   print('Your account number: $accountNumber');
  //   print('Your balance: $balance');
  //   print('Your interest: $overdraftLimit');
  // }

  @override
  void profile() {
    print('\nFrom Current account..............');
    print('Your account number: $accountNumber');
    print('Your balance: $balance');
    print('Your over draft limit: $overdraftLimit');
  }

  @override
  void withdraw(double amount) {
    //   ● Allow withdrawals up to the overdraft limit.
    // ● If the withdrawal amount exceeds the overdraft limit, print a message indicating insufficient funds.
    if (overdraftLimit >= amount && balance > overdraftLimit) {
      // if (overdraftLimit > amount && balance > amount) {

      balance -= amount;
      print('withdraw ammount: $amount');
      print('remaining balance: $balance');
    } else {
      print('Insufficient balnace');
    }
  }
}

main() {
  // ● Create an instance of the SavingsAccount class by providing values for the account number, initial balance, and interest rate.
  // ● Use the instance to perform operations like depositing and withdrawing money.
  // ● Create an instance of the CurrentAccount class by providing values for the account
  // number, initial balance, and overdraft limit.
  // ● Use the instance to perform operations like depositing and withdrawing.

  SavingAccount acc1 = SavingAccount(23, 100, 10);
  acc1.profile();
  acc1.deposite(1000);
  acc1.withdraw(50);
  acc1.deposite(200);

  CurrentAccount acc2 = CurrentAccount(07, 100, 999);
  acc2.profile();
  acc2.deposite(900);
  acc2.withdraw(999);
}
