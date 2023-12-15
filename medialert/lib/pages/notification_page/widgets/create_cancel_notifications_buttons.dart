import 'package:flutter/material.dart';
import '../../../theme/font_styles.dart';
import 'package:medialert/theme/theme_data.dart';

final class CreateNotificationButton extends StatelessWidget {
  const CreateNotificationButton({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: AppTheme.backgroundColorForPositiveInteractables,
        textStyle: buttonStyle,
        padding: const EdgeInsets.all(
          10,
        ),
      ),
      onPressed: onPressed,
      child: const Text('Set Notification'),
    );
  }
}

class CancelNotificationButton extends StatelessWidget {
  const CancelNotificationButton({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: AppTheme.backgroundColorForNegativeInteractables,
        textStyle: buttonStyle,
        padding: const EdgeInsets.all(
          10,
        ),
      ),
      onPressed: onPressed,
      child: const Text('Cancel Notification'),
    );
  }
}
