sealed class NewMedicationPageValidators {
  static String? validateNameField(String? value) {
    if (value == null) {
      return 'Type the medication name';
    }
    if (value.length > 30) {
      return 'The medication name has to be shorter than 30 characters';
    }
    return null;
  }

  static String? validateRequiredQuantityField(String? value) {
    if (value == null) {
      return 'Type a value';
    }
    final valueAsNum = num.tryParse(value);
    if (value.contains('.')) {
      final decimals = valueAsNum!.toString().split('.')[1];
      if (decimals.length > 2) {
        return 'Only two decimal digits';
      }
    } else {
      final decimals = valueAsNum!.toString().split(',')[1];
      if (decimals.length > 2) {
        return 'Only two decimal digits';
      }
    }
    return null;
  }

  static String? validateOptionalQuantityField(String? value) {
    if (value != null && num.tryParse(value) == null) {
      return 'This value has to be a valid number';
    }
    if (value != null) {
      final valueAsNum = num.tryParse(value);
      if (value.contains('.')) {
        final decimals = valueAsNum!.toString().split('.')[1];
        if (decimals.length > 2) {
          return 'Only two decimal digits';
        }
      } else {
        final decimals = valueAsNum!.toString().split(',')[1];
        if (decimals.length > 2) {
          return 'Only two decimal digits';
        }
      }
    }
    return null;
  }

  static String? validateOptionalTextField(String? value) => null;

  static String? validateRequiredDropdown(dynamic value) {
    if (value == null) {
      return 'This field is mandatory';
    }
    return null;
  }

  static String? validateOptionalDropdown(dynamic value) => null;
}
