import 'package:bytebank/models/transaction.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Shold return the value when create a transaction', () {
    final transaction = Transaction(null, 200, null);
    expect(transaction.value, 200);
  });
  test('Shold show the error message when create a transaction with value less than zero', () {
    expect(() => Transaction(null, -200, null), throwsAssertionError);
  });
}
