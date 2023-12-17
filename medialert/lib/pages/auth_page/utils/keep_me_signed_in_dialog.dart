import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medialert/pages/medication_page/medication_page.dart';

import '../../../main.dart';
import '../../../providers/keep_auth_provider/keep_auth_provider.dart';
import '../../../theme/font_styles.dart';
import '../../../theme/theme_data.dart';
import '../../medications_page/medications_page.dart';
import '../auth_page.dart';

void keepMeSignedInDialog(
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
