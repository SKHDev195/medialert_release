sealed class NotificationFormFieldsValidators {
  static String? validateOffsetField(DateTime? offset) {
    if (offset == null) {
      return 'Please enter a date';
    } else if (offset.isBefore(DateTime.now())) {
      return 'Please enter a future date';
    }
    return null;
  }

  static String? validateNotificationRegularityField(String? value) {
    if (value == null) {
      return 'Type an integer number';
    } else if (num.tryParse(value) == null) {
      return 'This value has to be a valid number';
    } else if (num.tryParse(value)! < 1) {
      return 'Type a number greater than zero';
    }
    return null;
  }
}
