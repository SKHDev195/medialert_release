import '../models/dosage.dart';
import 'package:isar/isar.dart';
import '../models/schedule.dart';
import '../models/medication.dart';

final class MedicationsRepository {
  MedicationsRepository({
    required this.isar,
  });

  final Isar isar;

  Future<List<Medication>> getAllMedications() async {
    final medications = isar.collection<Medication>().where().findAll();
    return medications;
  }

  Future<Medication> getMedication(int medicationId) async {
    try {
      final medication = await isar.collection<Medication>().get(medicationId);
      return medication!;
    } on Exception {
      rethrow;
    }
  }

  Future<void> createMedication(
    String name,
    Dosage dosage,
    bool? isSecret,
    Schedule? schedule,
    String? specialNote,
  ) async {
    final newMedication = Medication(
      name: name,
      dosage: dosage,
      isSecret: isSecret,
      schedule: schedule,
      specialNote: specialNote,
    );

    await isar.writeTxn(() async {
      await isar.collection<Medication>().put(newMedication);
    });
  }

  Future<void> updateMedication(
    Medication medication,
    String name,
    Dosage dosage,
    bool? isSecret,
    Schedule? schedule,
    String? specialNote,
  ) async {
    await isar.writeTxn(() async {
      medication.name = name;
      medication.dosage = dosage;
      medication.isSecret = isSecret ?? medication.isSecret;
      medication.schedule = schedule ?? medication.schedule;
      medication.specialNote = specialNote ?? medication.specialNote;

      await isar.collection<Medication>().put(medication);
    });
  }

  Future<void> deleteMedication(int medicationId) async {
    await isar.writeTxn(() async {
      await isar.collection<Medication>().delete(medicationId);
    });
  }
}
