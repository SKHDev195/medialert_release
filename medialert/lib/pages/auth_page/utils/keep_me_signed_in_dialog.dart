import '../../../main.dart';
import 'package:flutter/material.dart';
import '../../../theme/theme_data.dart';
import '../../../theme/font_styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import '../../../providers/keep_auth_provider/keep_auth_provider.dart';


void keepMeSignedInDialog(
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
          'Warning',
          style: dialogTitleStyle,
        ),
        content: const Text(
          'Are you sure you want to stay signed in? If you stay signed in, other people can access sensitive medications data.',
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
              ref.watch(
                setAuthProvider(true),
              );
              Navigator.pop(context);
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
