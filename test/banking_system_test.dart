import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/util/banking_system.dart';

main() {
  test('Open account successfully', () {
    BankingSystem bankingSystem = BankingSystem();
    bankingSystem.openAccount(100);
    expect(bankingSystem.getAmount(), 100);
  });

  test('if account is already open then Throw exception', () {
    BankingSystem bankingSystem = BankingSystem();
    bankingSystem.openAccount(1000);
    expect(() => bankingSystem.openAccount(500), throwsException);
  });

  test('deposits money', () {
    BankingSystem bankingSystem = BankingSystem();
    bankingSystem.openAccount(100);
    bankingSystem.depositsMoney(1000);
    expect(bankingSystem.getAmount(), 1100);
  });

  test('withdrow money', () {
    BankingSystem bankingSystem = BankingSystem();
    bankingSystem.openAccount(200);
    bankingSystem.widhdrowMoney(100);
    expect(bankingSystem.getAmount(), 100);
  });

  test('deposit money before opening account throw exception', () {
    BankingSystem bankingSystem = BankingSystem();
    expect(() => bankingSystem.depositsMoney(100), throwsException);
  });

  test('withdrow before opening account throw exception', () {
    BankingSystem bankingSystem = BankingSystem();
    expect(() => bankingSystem.widhdrowMoney(500), throwsException);
  });

  test('Withdraw money', () {
    BankingSystem bankingSystem = BankingSystem();
    bankingSystem.openAccount(1000);
    bankingSystem.depositsMoney(1000);
    bankingSystem.depositsMoney(3000);
    bankingSystem.widhdrowMoney(2000);
    expect(bankingSystem.getAmount(), 3000);
  });

  test(
      'withdrow money when try to withdrow money more than available balance throw exception',
      () {
    BankingSystem bankingSystem = BankingSystem();
    bankingSystem.openAccount(1000);
    expect(() => bankingSystem.widhdrowMoney(1500), throwsException);
  });
}
