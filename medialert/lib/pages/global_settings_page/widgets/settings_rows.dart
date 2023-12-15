import 'package:medialert/main.dart';
import 'package:flutter/material.dart';
import '../../../theme/font_styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/theme_provider/theme_provider.dart';
import 'package:medialert/providers/notifications_provider/notifications_provider.dart';

final class ThemeSwitchRow extends ConsumerWidget {
  const ThemeSwitchRow({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final ThemeState themeState = ref.watch(themeServiceProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Dark theme enabled',
            style: normalStyle,
          ),
          Switch(
            value: (themeState.isDark) ? true : false,
            onChanged: (value) {
              ref.watch(themeServiceProvider.notifier).switchTheme();
            },
          ),
        ],
      ),
    );
  }
}
