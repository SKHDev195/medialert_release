import '../main.dart';
import '../theme/theme_data.dart';
import '../theme/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';


void notificationPermissionDialog(
  BuildContext context,
  WidgetRef ref,
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
          'Notifications',
          style: dialogTitleStyle,
        ),
        content: const Text(
          'It appears notifications are disabled for MediAlert. Would you like to go to app settings to enable notifications?',
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
              Navigator.pop(context);
              AppSettings.openAppSettings(
                type: AppSettingsType.notification,
              );
            },
            child: const Text(
              'GO TO SETTINGS',
              style: normalStyle,
            ),
          ),
        ],
      );
    },
  );
}
