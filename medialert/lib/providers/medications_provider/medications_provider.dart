import '../../models/dosage.dart';
import '../../models/schedule.dart';
import '../../models/medication.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../medications_repository_provider/medications_repository_provider.dart';

part 'medications_provider.g.dart';

@riverpod
Future<List<Medication>> medications(
  MedicationsRef ref,
) async {
  final medicationsRepository =
      await ref.watch(medicationsRepositoryInstanceProvider.future);
  final medications = medicationsRepository.getAllMedications();
  return medications;
}

@riverpod
Future<Medication> getMedication(
  GetMedicationRef ref,
  int medicationId,
) async {
  final medicationsRepository =
      await ref.watch(medicationsRepositoryInstanceProvider.future);
  final medication = medicationsRepository.getMedication(medicationId);
  return medication;
}

@riverpod
Future<void> createMedication(
  CreateMedicationRef ref,
  String medicationName,
  Dosage dosage,
  bool? isSecret,
  Schedule? schedule,
  String? specialNote,
) async {
  final medicationsRepository =
      await ref.read(medicationsRepositoryInstanceProvider.future);
  await medicationsRepository.createMedication(
    medicationName,
    dosage,
    isSecret,
    schedule,
    specialNote,
  );
}

@riverpod
Future<void> updateMedication(
  UpdateMedicationRef ref,
  Medication medication,
  String medicationName,
  Dosage dosage,
  bool? isSecret,
  Schedule? schedule,
  String? specialNote,
) async {
  final medicationsRepository =
      await ref.read(medicationsRepositoryInstanceProvider.future);
  await medicationsRepository.updateMedication(
    medication,
    medicationName,
    dosage,
    isSecret,
    schedule,
    specialNote,
  );
}

@riverpod
Future<void> deleteMedication(
  DeleteMedicationRef ref,
  int medicationId,
) async {
  final medicationsRepository =
      await ref.read(medicationsRepositoryInstanceProvider.future);
  await medicationsRepository.deleteMedication(medicationId);
}
