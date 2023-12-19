import 'package:medialert/providers/notifications_provider/notifications_provider.dart';
import 'package:medialert/theme/theme_data.dart';

import '../providers/keep_auth_provider/keep_auth_provider.dart';
import 'auth_page/auth_page.dart';
import 'package:medialert/main.dart';
import 'package:flutter/material.dart';
import 'medication_page/medication_page.dart';
import '../utils/notification_controller.dart';
import 'medications_page/medications_page.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medialert/pages/notification_page/notification_page.dart';
import 'package:medialert/pages/new_medication_page/new_medication_page.dart';
import 'package:medialert/pages/global_settings_page/global_settings_page.dart';

final class AppView extends ConsumerStatefulWidget {
  const AppView({
    super.key,
  });

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static const String name = 'MediAlert';

  @override
  ConsumerState<AppView> createState() => _AppViewState();
}

final class _AppViewState extends ConsumerState<AppView> {
  @override
  void initState() {
    NotificationController.initializeNotificationsEventListeners();

    super.initState();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    final themeService = ref.watch(themeServiceProvider);
    final backupKeepAuth = ref.watch(keepAuthProvider);

    ref.watch(getKeepAuthProvider.future).then((value) {
      if (value == null) {
        ref.watch(
          createKeepAuthProvider(backupKeepAuth),
        );
      }
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeService.isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
      home: const AuthPage(),
      routes: {
        AuthPage.routeName: (context) => const AuthPage(),
        MedicationsPage.routeName: (context) => const MedicationsPage(),
        NewMedicationPage.routeName: (context) => const NewMedicationPage(),
        MedicationPage.routeName: (context) => const MedicationPage(),
        GlobalSettingsPage.routeName: (context) => const GlobalSettingsPage(),
        NotificationPage.routeName: (context) => const NotificationPage(),
      },
    );
  }
}
