import 'package:validators/validators.dart';
import 'package:password_strength/password_strength.dart';

sealed class AuthValidators {
  static String? validateEmail(String? email) {
    if (email == null || email.trim().isEmpty) {
      return 'Email required';
    } else if (!isEmail(
      email.trim(),
    )) {
      return 'Enter a valid email';
    }
    return null;
  }

  static String? validateSignupPassword(String? password) {
    if (password == null || password.trim().isEmpty) {
      return 'Password required';
    } else {
      final passwordStrength = estimatePasswordStrength(password);
      switch (passwordStrength) {
        case > 0.4:
          return null;
        default:
          return 'Enter a stronger password';
      }
    }
  }

  static String? validateLoginPassword(String? password) {
    if (password == null || password.trim().isEmpty) {
      return 'Password required';
    }
    return null;
  }
}
