import 'package:flutter/material.dart';
import '../../../theme/font_styles.dart';
import 'package:medialert/theme/theme_data.dart';

sealed class NotificationsSnackbarShower {
  static void showNotificationCreatedSnackbar(BuildContext context) {
    const SnackBar snackBar = SnackBar(
      duration: Duration(
        seconds: 2,
      ),
      content: Text(
        'Notification created!',
        style: normalStyle,
      ),
      backgroundColor: AppTheme.backgroundColorForPositiveInteractables,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void showNotificationCanceledSnackbar(BuildContext context) {
    const SnackBar snackBar = SnackBar(
      duration: Duration(
        seconds: 2,
      ),
      content: Text(
        'Notification canceled!',
        style: normalStyle,
      ),
      backgroundColor: AppTheme.backgroundColorForNegativeInteractables,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
