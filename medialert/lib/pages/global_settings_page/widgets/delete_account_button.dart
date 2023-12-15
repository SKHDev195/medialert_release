import 'package:flutter/material.dart';
import '../../../theme/font_styles.dart';

final class DeleteAccountButton extends StatelessWidget {
  const DeleteAccountButton({
    super.key,
    required this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 10,
        textStyle: buttonStyle,
        padding: const EdgeInsets.all(
          10,
        ),
      ),
      onPressed: onPressed,
      child: const Text('Delete Account'),
    );
  }
}
