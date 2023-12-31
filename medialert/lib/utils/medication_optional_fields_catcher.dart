import 'package:medialert/models/dosage.dart';

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
}
