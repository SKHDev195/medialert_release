import 'package:isar/isar.dart';

part 'schedule.g.dart';

enum DurationType {
  minute(prettyName: 'minute(s)'),
  hour(prettyName: 'hour(s)'),
  day(prettyName: 'days(s)'),
  week(prettyName: 'week(s)'),
  month(prettyName: 'month(s)');

  const DurationType({
    required this.prettyName,
  });

  final String prettyName;
}

@embedded
final class Schedule {
  Schedule([
    this.durationType,
    this.regularity,
  ]);

  @Enumerated(EnumType.ordinal32)
  DurationType? durationType;

  double? regularity;
}
