
import 'package:flutter_test/flutter_test.dart';

import '../../lib/models/transaction.dart';

void main(){
  test('Should return the value when create a transaction', (){
    final transaction = Transaction(null, 200, null);
    expect(transaction.value, 200);
  });
  test('Should show error when create transaction with value less than zero', (){
    expect(() => Transaction(null, 0, null), throwsAssertionError);
  });
}