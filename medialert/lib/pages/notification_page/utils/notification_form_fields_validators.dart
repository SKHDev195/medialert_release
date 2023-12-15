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
    }
    if (num.tryParse(value) == null) {
      return 'This value has to be a valid number';
    }
    if ((num.tryParse(value)! % num.tryParse(value)!) != 0) {
      return 'Type a valid integer number';
    }
    return null;
  }
}
