import 'package:null_safety_app/main.dart';
import 'package:test/test.dart';

void main() {
  test('Null Check For Country Test', () {
    final nullSafety = NullSafety();
    expect(nullSafety.nullCheckForCountry(), 3);
  });

  test('SafeCall For Country Test', () {
    final nullSafety = NullSafety();
    expect(nullSafety.safeCallForCountry(), null);
  });

  test('Null Check For City Test', () {
    final nullSafety = NullSafety();
    expect(nullSafety.nullCheckForCity(), null);
  });

  test('Safe Call For City Test', () {
    final nullSafety = NullSafety();
    expect(nullSafety.safeCallForCity(), null);
  });

  test('Safe Call Chain For Value Test', () {
    final nullSafety = NullSafety();
    expect(nullSafety.safeCallChainForValue(), '003');
  });

  test('Safe Call Using List Test', () {
    final nullSafety = NullSafety();
    expect(nullSafety.safeCallUsingList().length, 3);
  });

  test('Get Default Value If Object Null Test', () {
    final nullSafety = NullSafety();
    expect(nullSafety.getDefaultValueIfObjectNull(), "Not available");
  });

  test('Not Null Assertion For Exception Test', () {
    final nullSafety = NullSafety();
    expect(() => nullSafety.notNullAssertionForException(), throwsA(isA<TypeError>()));
  });
}
