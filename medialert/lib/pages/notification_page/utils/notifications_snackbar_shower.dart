import 'package:flutter/material.dart';

sealed class NotificationsSnackbarShower {
  static void showNotificationCreatedSnackbar(BuildContext context) {
    final SnackBar snackBar = SnackBar(
      content: const Text('Notification created!'),
      backgroundColor: Colors.greenAccent,
      action: SnackBarAction(
        label: 'Got it',
        onPressed: () => Navigator.pop(context),
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void showNotificationCanceledSnackbar(BuildContext context) {
    final SnackBar snackBar = SnackBar(
      content: const Text('Notification canceled!'),
      backgroundColor: Colors.redAccent,
      action: SnackBarAction(
        label: 'Got it',
        onPressed: () => Navigator.pop(context),
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
