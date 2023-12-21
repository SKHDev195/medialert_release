import 'pages/app_view.dart';
import 'models/keep_auth.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'utils/notification_controller.dart';
import 'package:workmanager/workmanager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((taskName, inputData) async {
    final splitString = taskName.split(' endid ');

    final notificationId = int.tryParse(splitString[0]);
    final notificationBody = splitString[1];
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: notificationId!,
        channelKey: 'scheduled',
        title: 'MediAlert',
        body: notificationBody,
        payload: {'uuid': 'user-profile-uuid'},
        displayOnBackground: true,
        displayOnForeground: true,
        criticalAlert: true,
      ),
    );

    return Future.value(true);
  });
}

final localAuthProvider = Provider<LocalAuthentication>(
  (ref) => LocalAuthentication(),
);

final keepAuthProvider = Provider<KeepAuth>(
  (ref) => KeepAuth(isEnabled: false),
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await NotificationController.initializeLocalNotifications();
  await NotificationController.interceptInitialCallActionRequest();
  await Workmanager().initialize(
    callbackDispatcher,
    isInDebugMode: true,
  );

  runApp(
    ProviderScope(
      child: EasyDynamicThemeWidget(
        child: const AppView(),
      ),
    ),
  );
}
