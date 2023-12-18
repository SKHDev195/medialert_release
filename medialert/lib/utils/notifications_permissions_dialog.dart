import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../main.dart';
import '../../../providers/keep_auth_provider/keep_auth_provider.dart';
import '../../../theme/font_styles.dart';
import '../../../theme/theme_data.dart';

void notificationsPermissionsDialog(
  BuildContext context,
  WidgetRef ref,
) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: ref.watch(themeServiceProvider).isDark
            ? AppTheme.dialogDarkBackgroundColor
            : AppTheme.dialogLightBackgroundColor,
        title: const Text(
          'Notifications',
          style: dialogTitleStyle,
        ),
        content: const Text(
          'Notifications are not enabled in app settings. Please enable them to receive medication notifications.',
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
            onPressed: () => AppSettings.openAppSettings(
              type: AppSettingsType.notification,
            ),
            child: const Text(
              'GO TO APP SETTINGS',
              style: normalStyle,
            ),
          ),
        ],
      );
    },
  );
}
