import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medialert/main.dart';
import 'package:medialert/pages/medications_page/medications_page.dart';

import '../../../models/medication.dart';
import '../../../providers/medications_provider/medications_provider.dart';
import '../../../providers/notifications_provider/notifications_provider.dart';
import '../../../theme/font_styles.dart';
import '../../../theme/theme_data.dart';

void deleteMedicationDialog(
  BuildContext context,
  WidgetRef ref,
  Medication medication,
) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: ref.watch(themeServiceProvider).isDark
            ? AppTheme.dialogDarkBackgroundColor
            : AppTheme.dialogLightBackgroundColor,
        title: const Text(
          'Delete Medication',
          style: dialogTitleStyle,
        ),
        content: const Text(
          'Are you sure you want to delete this medication?',
          style: normalStyle,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'NO',
              style: normalStyle,
            ),
          ),
          TextButton(
            onPressed: () {
              ref.read(
                deleteMedicationProvider(medication.medicationId),
              );
              ref.read(
                disableMedicationNotificationsProvider(
                  medication,
                ),
              );
              Navigator.popAndPushNamed(
                context,
                MedicationsPage.routeName,
              );
            },
            child: const Text(
              'YES',
              style: normalStyle,
            ),
          ),
        ],
      );
    },
  );
}
