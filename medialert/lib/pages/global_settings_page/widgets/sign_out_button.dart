import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medialert/theme/theme_data.dart';
import '../../../theme/font_styles.dart';
import '../utils/sign_out_dialog.dart';

final class SignOutButton extends ConsumerWidget {
  const SignOutButton({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return FilledButton(
      style: FilledButton.styleFrom(
          textStyle: buttonStyle,
          padding: const EdgeInsets.all(
            10,
          ),
          backgroundColor: AppTheme.backgroundColorForNegativeInteractables),
      onPressed: () {
        signOutDialog(
          context,
          ref,
        );
      },
      child: const Text('Sign Out'),
    );
  }
}
