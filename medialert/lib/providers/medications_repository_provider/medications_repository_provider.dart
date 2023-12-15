import '../isar_provider/isar_provider.dart';
import '../../repositories/medications_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'medications_repository_provider.g.dart';

@riverpod
Future<MedicationsRepository> medicationsRepositoryInstance(
    MedicationsRepositoryInstanceRef ref) async {
  final isar = await ref.watch(isarInstanceProvider.future);
  return MedicationsRepository(
    isar: isar,
  );
}
