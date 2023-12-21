import 'package:medialert/main.dart';
import 'package:flutter/material.dart';
import '../../../theme/theme_data.dart';
import '../../../models/medication.dart';
import '../../../theme/font_styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:medialert/pages/medications_page/medications_page.dart';
import '../../../providers/medications_provider/medications_provider.dart';
import '../../../providers/notifications_provider/notifications_provider.dart';
import 'package:medialert/pages/medication_page/utils/medication_snackbar_shower.dart';

void deleteMedicationDialog(
  BuildContext context,
  WidgetRef ref,
  Medication medication,
) {
  final themeMode = EasyDynamicTheme.of(context).themeMode;
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: (themeMode == ThemeMode.dark)
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
            onPressed: () async {
              await ref.read(
                deleteMedicationProvider(medication.medicationId).future,
              );
              await ref.read(
                disableMedicationNotificationsProvider(
                  medication,
                ).future,
              );
              await ref.refresh(medicationsProvider.future);
              MedicationSnackbarShower.showMedicationDeletedSnackbar(
                context,
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
