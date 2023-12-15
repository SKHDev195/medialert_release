import 'package:flutter/material.dart';
import 'package:medialert/theme/theme_data.dart';
import 'package:medialert/theme/font_styles.dart';

final class AuthenticateButton extends StatelessWidget {
  const AuthenticateButton({
    super.key,
    required this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        textStyle: buttonStyle,
        padding: const EdgeInsets.all(10),
        backgroundColor: AppTheme.backgroundColorForPositiveInteractables,
      ),
      onPressed: onPressed,
      child: const Text('Sign In'),
    );
  }
}
