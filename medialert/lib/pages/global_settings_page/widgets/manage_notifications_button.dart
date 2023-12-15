import 'package:flutter/material.dart';
import '../../../theme/font_styles.dart';
import 'package:medialert/theme/theme_data.dart';

class ManageNotificationsButton extends StatelessWidget {
  const ManageNotificationsButton({
    super.key,
    required this.onPressed,
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
      child: const Text('Manage Notifications'),
    );
  }
}
