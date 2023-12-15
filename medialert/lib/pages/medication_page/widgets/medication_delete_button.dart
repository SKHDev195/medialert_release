import 'package:flutter/material.dart';
import 'package:medialert/theme/theme_data.dart';
import 'package:medialert/theme/font_styles.dart';

final class MedicationDeleteButton extends StatelessWidget {
  const MedicationDeleteButton({
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
      child: const Text('Delete Medication'),
    );
  }
}
