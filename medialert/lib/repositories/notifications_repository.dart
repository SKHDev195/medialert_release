import '../models/dosage.dart';
import 'package:isar/isar.dart';
import '../models/schedule.dart';
import '../models/medication.dart';
import 'package:workmanager/workmanager.dart';
import '../models/medication_notification.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

final class NotificationsRepository {
  NotificationsRepository({
    required this.isar,
  });

  final Isar isar;

  Future<bool> getNotificationsPermissionStatus() async {
    final result = await Permission.notification.isGranted;
    return result;
  }

  Future<void> disableMedicationNotifications(Medication medication) async {
    await AwesomeNotifications().cancel(
      medication.medicationId,
    );
    await isar.writeTxn(() async {
      await isar
          .collection<MedicationNotification>()
          .delete(medication.medicationId);
    });

    await Workmanager().cancelByTag(medication.medicationId.toString());
  }

  Future<MedicationNotification?> getNotification(int medicationId) async {
    try {
      final notification = await isar
          .collection<MedicationNotification>()
          .filter()
          .medicationIdEqualTo(
            medicationId,
          )
          .findAll();
      if (notification.isNotEmpty) {
        return notification[0];
      }
      return null;
    } on Exception {
      rethrow;
    }
  }

  Future<void> saveNotification(
    Id medicationId,
    String medicationName,
    Dosage dosage,
    Schedule schedule,
    DateTime? notificationOffset,
  ) async {
    final currentNotification = await getNotification(medicationId);
    if (currentNotification != null) {
      currentNotification.notificationOffset = notificationOffset;
      currentNotification.schedule = schedule;
      await isar.writeTxn(() async {
        isar.collection<MedicationNotification>().put(currentNotification);
      });
    } else if (currentNotification == null) {
      final newNotification = MedicationNotification(
        medicationId: medicationId,
        medicationName: medicationName,
        dosage: dosage,
        schedule: schedule,
        notificationOffset: notificationOffset,
        notificationId: medicationId,
      );
      await isar.writeTxn(
        () async {
          await isar.collection<MedicationNotification>().put(newNotification);
        },
      );
    }
  }
}
