import 'widgets/settings_rows.dart';
import 'package:medialert/main.dart';
import 'package:flutter/material.dart';
import 'package:app_settings/app_settings.dart';
import 'package:medialert/theme/font_styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medialert/pages/widgets/form_separator.dart';
import 'package:medialert/pages/global_settings_page/widgets/manage_notifications_button.dart';

final class GlobalSettingsPage extends ConsumerWidget {
  const GlobalSettingsPage({super.key});

  static const routeName = '/globalSettings';

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final themeService = ref.watch(themeServiceProvider.notifier);
    final isDarkThemeEnabled = ref.watch(themeServiceProvider).isDark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Settings'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              const ThemeSwitchRow(),
              const Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(
                height: 15,
              ),
              ManageNotificationsButton(
                onPressed: () => AppSettings.openAppSettings(
                    type: AppSettingsType.notification),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
