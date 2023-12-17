import 'dosage.dart';
import 'schedule.dart';
import 'package:isar/isar.dart';

part 'medication.g.dart';

@collection
@Name("Medication")
final class Medication {
  Medication({
    required this.name,
    required this.dosage,
    this.isSecret,
    this.schedule,
    this.specialNote,
  });

  @Name("id")
  Id medicationId = Isar.autoIncrement;

  @Name("name")
  String name;

  @Name("dosage")
  Dosage dosage;

  @Name("isSecret")
  bool? isSecret;

  @Name("schedule")
  Schedule? schedule;

  @Name("specialNote")
  String? specialNote;
}
