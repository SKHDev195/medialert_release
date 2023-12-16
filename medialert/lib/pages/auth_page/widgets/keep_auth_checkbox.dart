import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medialert/providers/keep_auth_provider/keep_auth_provider.dart';
import 'package:medialert/theme/font_styles.dart';
import 'package:medialert/theme/theme_data.dart';

class KeepAuthCheckbox extends ConsumerWidget {
  const KeepAuthCheckbox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FormBuilderCheckbox(
      name: 'Keep me signed in',
      title: const Text(
        'Keep me signed in',
        style: normalStyle,
      ),
      enabled: true,
      initialValue: false,
      activeColor: AppTheme.backgroundColorForNegativeInteractables,
      onChanged: (value) {
        ref.watch(switchAuthProvider);
      },
    );
  }
}
