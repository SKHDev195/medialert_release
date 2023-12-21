import 'package:flutter/material.dart';
import '../../../theme/font_styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';



final class ThemeSwitchRow extends ConsumerWidget {
  const ThemeSwitchRow({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Dark theme enabled',
            style: normalStyle,
          ),
          EasyDynamicThemeSwitch(),
        ],
      ),
    );
  }
}
