import 'package:medialert/providers/theme_provider/theme_provider.dart';

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

import '../models/theme.dart' as CustomTheme;

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
    final backupTheme = ref.watch(themeProvider);
    final backupKeepAuth = ref.watch(keepAuthProvider);

    final theme = ref.watch(getThemeProvider.future).then((value) {
      if (value == null) {
        ref.watch(
          createThemeProvider(backupTheme),
        );
      }
    });

    ref.watch(getKeepAuthProvider.future).then((value) {
      if (value == null) {
        ref.watch(
          createKeepAuthProvider(backupKeepAuth),
        );
      }
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          theme..isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
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
