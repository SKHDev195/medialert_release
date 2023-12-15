import 'dosage.dart';
import 'schedule.dart';
import 'package:isar/isar.dart';
import 'package:medialert/models/medication_remainder.dart';

part 'medication_notification.g.dart';

@collection
@Name("medicationNotification")
final class MedicationNotification {
  MedicationNotification({
    required this.medicationId,
    required this.medicationName,
    required this.dosage,
    required this.schedule,
    required this.notificationOffset,
  });

  @Name("id")
  Id notificationId = Isar.autoIncrement;

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
