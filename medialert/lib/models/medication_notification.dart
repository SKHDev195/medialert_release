import 'dosage.dart';
import 'schedule.dart';
import 'package:isar/isar.dart';

part 'medication_notification.g.dart';

@collection
@Name("medicationNotification")
final class MedicationNotification {
  MedicationNotification({
    required this.notificationId,
    required this.medicationId,
    required this.medicationName,
    required this.dosage,
    required this.schedule,
    required this.notificationOffset,
  });

  @Name("id")
  Id notificationId;

  @Name("medicationId")
  int medicationId;

  @Name("medicationName")
  String medicationName;

  @Name("dosage")
  Dosage dosage;

  @Name("notificationSchedule")
  Schedule schedule;

  @Name("offset")
  DateTime? notificationOffset;
}
