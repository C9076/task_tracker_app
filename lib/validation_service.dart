class ValidationService {
  /// Returns true when [value] is not null and contains non-whitespace text.
  bool isValidString(String? value) {
    return value != null && value.trim().isNotEmpty;
  }

  /// Returns an error message for a form field, or null when valid.
  String? validateRequired(String? value, String fieldName) {
    return isValidString(value) ? null : 'กรุณากรอก $fieldName';
  }
}
