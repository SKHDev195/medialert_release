import 'package:flutter/material.dart';
import 'package:medialert/theme/theme_data.dart';
import 'package:medialert/theme/font_styles.dart';

sealed class MedicationSnackbarShower {
  static void showMedicationCreatedSnackbar(BuildContext context) {
    const SnackBar snackBar = SnackBar(
      duration: Duration(
        seconds: 2,
      ),
      content: Text(
        'Medication updated!',
        style: normalStyle,
      ),
      backgroundColor: AppTheme.backgroundColorForPositiveInteractables,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void showMedicationUpdatedSnackbar(BuildContext context) {
    const SnackBar snackBar = SnackBar(
      duration: Duration(
        seconds: 2,
      ),
      content: Text(
        'Medication updated!',
        style: normalStyle,
      ),
      backgroundColor: AppTheme.backgroundColorForPositiveInteractables,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void showMedicationDeletedSnackbar(BuildContext context) {
    const SnackBar snackBar = SnackBar(
      duration: Duration(
        seconds: 2,
      ),
      content: Text(
        'Medication deleted!',
        style: normalStyle,
      ),
      backgroundColor: AppTheme.backgroundColorForNegativeInteractables,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
