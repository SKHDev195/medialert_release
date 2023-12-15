import 'dart:ui';
import 'dart:isolate';
import '../pages/app_view.dart';
import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:medialert/pages/medications_page/medications_page.dart';

final class NotificationController {
  static ReceivePort? receivePort;
  static ReceivedAction? initialCallAction;

  static Future<void> interceptInitialCallActionRequest() async {
    ReceivedAction? receivedAction =
        await AwesomeNotifications().getInitialNotificationAction();

    if (receivedAction?.channelKey == 'call_channel') {
      initialCallAction = receivedAction;
    }
  }

  static Future<void> initializeNotificationsEventListeners() async {
    AwesomeNotifications().setListeners(
        onActionReceivedMethod: NotificationController.onActionReceivedMethod,
        onNotificationCreatedMethod:
            NotificationController.onNotificationCreatedMethod,
        onNotificationDisplayedMethod:
            NotificationController.onNotificationDisplayedMethod,
        onDismissActionReceivedMethod:
            NotificationController.onDismissActionReceivedMethod);
  }

  static Future<void> initializeIsolateReceivePort() async {
    receivePort = ReceivePort('Notification action port in main isolate');
    receivePort!.listen((silentData) => onActionReceivedMethodImpl(silentData));

    IsolateNameServer.registerPortWithName(
        receivePort!.sendPort, 'notification_action_port');
  }

  @pragma("vm:entry-point")
  static Future<void> onNotificationCreatedMethod(
      ReceivedNotification receivedNotification) async {}

  @pragma("vm:entry-point")
  static Future<void> onNotificationDisplayedMethod(
      ReceivedNotification receivedNotification) async {}

  @pragma("vm:entry-point")
  static Future<void> onDismissActionReceivedMethod(
      ReceivedAction receivedAction) async {}

  @pragma("vm:entry-point")
  static Future<void> onActionReceivedMethod(
      ReceivedAction receivedAction) async {
    if (receivePort == null) {
      SendPort? sendPort =
          IsolateNameServer.lookupPortByName('notification_action_port');

      if (sendPort != null) {
        sendPort.send(receivedAction);
        return;
      }
    }

    await onActionReceivedMethodImpl(receivedAction);
  }

  static Future<void> onActionReceivedMethodImpl(
      ReceivedAction receivedAction) async {
    WidgetsFlutterBinding.ensureInitialized();

    AppView.navigatorKey.currentState?.pushNamedAndRemoveUntil(
      MedicationsPage.routeName,
      (route) =>
          (route.settings.name != MedicationsPage.routeName) || route.isFirst,
      arguments: receivedAction,
    );

    switch (receivedAction.channelKey) {
      default:
        break;
    }
  }

  static Future<void> receiveButtonInputText(
      ReceivedAction receivedAction) async {}

  static Future<void> initializeLocalNotifications() async {
    AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
          channelKey: 'scheduled',
          channelName: 'MediAlert Notifications',
          channelDescription: 'Alerts about medications',
          defaultColor: Colors.greenAccent,
          ledColor: Colors.greenAccent,
          channelShowBadge: true,
          vibrationPattern: lowVibrationPattern,
          importance: NotificationImportance.High,
          defaultRingtoneType: DefaultRingtoneType.Alarm,
          criticalAlerts: true,
        ),
      ],
      debug: true,
    );
  }
}
