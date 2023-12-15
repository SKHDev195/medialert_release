import 'package:medialert/models/dosage.dart';
import 'package:medialert/models/medication_remainder.dart';

import '../models/schedule.dart';

sealed class MedicationOptionalFieldsCatcher {
  static String? getCurrentDosageQuantity(Dosage? dosage) {
    if (dosage != null && dosage.quantity != null) {
      return dosage.quantity.toString();
    }
    return null;
  }

  static String? getCurrentScheduleQuantity(Schedule? schedule) {
    if (schedule != null && schedule.regularity != null) {
      return schedule.regularity.toString();
    }
    return null;
  }

  static String? getCurrentRemainderQuantity(
      MedicationRemainder? medicationRemainder) {
    if (medicationRemainder != null && medicationRemainder.quantity != null) {
      return medicationRemainder.quantity.toString();
    }
    return null;
  }
}
