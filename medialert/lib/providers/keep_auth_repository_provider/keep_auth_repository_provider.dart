import 'package:medialert/repositories/keep_auth_repository.dart';

import '../isar_provider/isar_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'keep_auth_repository_provider.g.dart';

@riverpod
Future<KeepAuthRepository> keepAuthRepositoryInstance(
    KeepAuthRepositoryInstanceRef ref) async {
  final isar = await ref.watch(isarInstanceProvider.future);

  return KeepAuthRepository(
    isar: isar,
  );
}
