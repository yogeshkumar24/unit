import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/util/counter.dart';

main() {
  group("counter case test", () {
    test('Counter initially value 0', () {
      Counter counter = Counter();
      expect(counter.count, 0);
    });

    test('Counter value increase by 3', () {
      Counter counter = Counter();
      counter.increaseValue();
      counter.increaseValue();
      counter.increaseValue();
      expect(counter.count, 3);
    });

    test('Counter value decrease by 3', () {
      Counter counter = Counter();
      counter.decreaseValue();
      counter.decreaseValue();
      counter.decreaseValue();
      expect(counter.count, -3);
    });

    test('Counter value = 4', () {
      Counter counter = Counter();
      counter.increaseValue();
      counter.increaseValue();
      counter.decreaseValue();
      counter.increaseValue();
      counter.increaseValue();
      counter.increaseValue();
      counter.decreaseValue();
      counter.increaseValue();
      expect(counter.count, 4);
    });
  });

  test('Counter reset value', () {
    Counter counter = Counter();
    counter.resetAmount();
    expect(counter.count, 0);
  });
}
