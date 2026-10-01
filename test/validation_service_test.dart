import 'package:flutter_test/flutter_test.dart';
import 'package:task_tracker_app/validation_service.dart';

void main() {
  late ValidationService service;

  setUp(() {
    service = ValidationService();
  });

  group('ValidationService.isValidString', () {
    test('Test Case 1: valid text ("Hello World") returns true', () {
      expect(service.isValidString('Hello World'), isTrue);
    });

    test('Test Case 2: empty string returns false', () {
      expect(service.isValidString(''), isFalse);
    });

    test('Test Case 2: null returns false', () {
      expect(service.isValidString(null), isFalse);
    });

    test('whitespace-only string returns false', () {
      expect(service.isValidString('   '), isFalse);
    });
  });

  group('ValidationService.validateRequired', () {
    test('returns null for valid input', () {
      expect(service.validateRequired('Task', 'Title'), isNull);
    });

    test('returns error message for empty input', () {
      expect(service.validateRequired('', 'Title'), 'กรุณากรอก Title');
    });
  });
}
