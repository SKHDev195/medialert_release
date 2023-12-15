import '../models/schedule.dart';

sealed class ScheduleTransformer {
  static int transformSchedule(Schedule schedule) {
    final int multiplier = switch (schedule.durationType) {
      DurationType.day => 24 * 60,
      DurationType.hour => 60,
      DurationType.minute => 1,
      DurationType.month => 28 * 24 * 60,
      DurationType.week => 7 * 24 * 60,
      _ => 1,
    };

    return (schedule.regularity! * multiplier).round();
  }
}
