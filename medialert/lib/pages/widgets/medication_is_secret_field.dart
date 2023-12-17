import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:medialert/theme/theme_data.dart';

import '../../models/medication.dart';
import '../../theme/font_styles.dart';
import 'medication_info.dart';

final class MedicationIsSecretField extends StatelessWidget {
  const MedicationIsSecretField({
    super.key,
    required this.onSecretChanged,
    this.medication,
  });

  final Function(bool?) onSecretChanged;
  final Medication? medication;

  bool? getCurrentSecretStatus() {
    if (medication != null) {
      return medication!.isSecret;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormBuilderCheckbox(
            name: 'Keep this medication private?',
            title: const Text(
              'Keep this medication private?',
              style: MedicationInfo.boldStyle,
            ),
            subtitle: const Text(
              'If enabled, all notifications for this medication will not reveal its name or other details.',
              style: normalStyle,
            ),
            onChanged: onSecretChanged,
            activeColor: AppTheme.backgroundColorForPositiveInteractables,
            initialValue: getCurrentSecretStatus(),
          ),
        ],
      ),
    );
  }
}
