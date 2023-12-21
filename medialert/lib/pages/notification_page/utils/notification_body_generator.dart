import '../../../models/medication.dart';
import 'package:medialert/utils/doubles_string_prettifier.dart';

sealed class NotificationBodyGenerator {
  static String generateNotificationBody(Medication medication) {
    if (medication.isSecret != null && medication.isSecret!) {
      final String notificationBody =
          '${medication.medicationId} endid Hey! This is just a kind reminder about something really important.';
      return notificationBody;
    } else {
      final String medicationScheduleString =
          prettifyMedicationScheduleString(medication);
      final String dosageScheduleString =
          'You take ${DoublesStringPrettifier.prettifyDoubleToString(medication.dosage.quantity!)} ${medication.dosage.dosageType!.prettyName}$medicationScheduleString';
      final String notificationBody =
          'Don\'t forget to take ${medication.name}!\n$dosageScheduleString\n';
      return '${medication.medicationId} endid $notificationBody';
    }
  }

  static String prettifyMedicationScheduleString(Medication medication) {
    if (medication.schedule == null) {
      return '.';
    } else if (medication.schedule!.regularity != null &&
        medication.schedule!.durationType != null) {
      return ' every ${DoublesStringPrettifier.prettifyDoubleToString(medication.schedule!.regularity!)} ${medication.schedule!.durationType!.prettyName}.';
    } else if (medication.schedule!.regularity == null &&
        medication.schedule!.durationType != null) {
      return ' every unknown number of ${medication.schedule!.durationType!.prettyName}.';
    } else if (medication.schedule!.regularity != null &&
        medication.schedule!.durationType == null) {
      return ' every ${medication.schedule!.regularity!} units of time.';
    }
    return '';
  }
}
