import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medialert/pages/auth_page/utils/keep_me_signed_in_dialog.dart';
import 'package:medialert/providers/keep_auth_provider/keep_auth_provider.dart';
import 'package:medialert/theme/font_styles.dart';
import 'package:medialert/theme/theme_data.dart';

import '../../../models/custom_error.dart';
import '../../../utils/error_dialog.dart';

class KeepAuthCheckbox extends ConsumerWidget {
  const KeepAuthCheckbox({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    bool? isKeepAuthEnabled;
    ref.watch(getKeepAuthProvider).when(
          data: (data) {
            if (data != null) {
              isKeepAuthEnabled = data.isEnabled;
            } else {
              isKeepAuthEnabled = null;
            }
          },
          error: (error, stackTrace) {
            isKeepAuthEnabled = false;
            errorDialog(
              context,
              const CustomError(
                  plugin: 'Auth Plugin',
                  message: 'Could not process auth data!'),
            );
          },
          loading: () {},
        );
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 300,
        child: FormBuilderCheckbox(
          name: 'Keep me signed in',
          controlAffinity: ListTileControlAffinity.leading,
          initialValue: isKeepAuthEnabled,
          activeColor: AppTheme.backgroundColorForNegativeInteractables,
          onChanged: (value) {
            if (value != null && value) {
              keepMeSignedInDialog(
                context,
                ref,
              );
            } else {
              ref.watch(
                setAuthProvider(value!),
              );
            }
          },
          title: const Text(
            'Keep me signed in',
            style: normalStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
