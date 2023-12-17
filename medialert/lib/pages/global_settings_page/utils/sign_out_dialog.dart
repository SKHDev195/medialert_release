import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medialert/pages/auth_page/auth_page.dart';
import 'package:medialert/theme/font_styles.dart';

import '../../../main.dart';
import '../../../providers/keep_auth_provider/keep_auth_provider.dart';
import '../../../theme/theme_data.dart';

void signOutDialog(
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
          'Sign Out',
          style: dialogTitleStyle,
        ),
        content: const Text(
          'Do you really want to sign out?',
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
                setAuthProvider(false),
              );
              Navigator.popAndPushNamed(
                context,
                AuthPage.routeName,
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
