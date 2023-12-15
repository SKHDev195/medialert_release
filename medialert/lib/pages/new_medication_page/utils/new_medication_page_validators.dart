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

  static String? validateRequiredTextField(String? value) {
    if (value == null) {
      return 'Type a number';
    }
    if (num.tryParse(value) == null) {
      return 'This value has to be a valid number';
    }
    return null;
  }

  static String? validateOptionalQuantityField(String? value) {
    if (value != null && num.tryParse(value) == null) {
      return 'This value has to be a valid number';
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
