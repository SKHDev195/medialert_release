import '../models/medication.dart';
import '../models/dosage_type.dart';
import 'package:medialert/models/schedule.dart';
import 'package:medialert/models/medication_remainder.dart';

final class FieldsTransformer {
  static String transformScheduleQuantityField(Schedule schedule) {
    if (schedule.regularity == null) {
      return 'every ... ';
    } else if (schedule.regularity == schedule.regularity!.toInt()) {
      return 'every ${schedule.regularity!.toInt()} ';
    } else {
      return 'every ${schedule.regularity} ';
    }
  }

  static String transformScheduleDurationTypeField(Schedule schedule) {
    if (schedule.durationType == null) {
      return 'time(s)';
    } else {
      return schedule.durationType!.prettyName;
    }
  }

  static String transformQuantityField(double? quantity) {
    if (quantity == null) {
      return '... ';
    } else if (quantity == quantity.toInt()) {
      return '${quantity.toInt()} ';
    } else {
      return '$quantity ';
    }
  }

  static String catchDosageType(DosageType? dosageType) {
    if (dosageType == null) {
      return '';
    } else {
      return dosageType.prettyName;
    }
  }
}
