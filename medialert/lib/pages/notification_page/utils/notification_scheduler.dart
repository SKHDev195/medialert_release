import '../../../models/schedule.dart';
import '../../../models/medication.dart';
import 'notification_body_generator.dart';
import 'package:workmanager/workmanager.dart';
import 'package:medialert/utils/schedule_transformer.dart';

sealed class NotificationScheduler {
  static Future<void> createRepeatedNotification(
    Medication medication,
    Schedule schedule,
    DateTime offset,
  ) async {
    final interval = ScheduleTransformer.transformSchedule(schedule);
    final delay = offset.difference(DateTime.now());
    final taskName =
        NotificationBodyGenerator.generateNotificationBody(medication);
    await Workmanager().registerPeriodicTask(
      medication.medicationId.toString(),
      taskName,
      frequency: Duration(
        minutes: interval,
      ),
      initialDelay: delay,
      tag: medication.medicationId.toString(),
    );
  }
}
