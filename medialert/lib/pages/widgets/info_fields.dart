import 'package:flutter/material.dart';

import '../auth_validators.dart';

final class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: 'Enter your email',
      ),
      validator: (value) => AuthValidators.validateEmail(value),
    );
  }
}

final class LoginPasswordField extends StatelessWidget {
  const LoginPasswordField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        hintText: 'Enter your password',
      ),
      validator: (value) => AuthValidators.validateLoginPassword(value),
    );
  }
}

final class SignupPasswordField extends StatelessWidget {
  const SignupPasswordField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        hintText: 'Enter your password',
      ),
      validator: (value) => AuthValidators.validateSignupPassword(value),
    );
  }
}
