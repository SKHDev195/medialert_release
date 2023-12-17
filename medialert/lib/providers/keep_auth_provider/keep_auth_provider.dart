import 'package:medialert/providers/keep_auth_repository_provider/keep_auth_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/keep_auth.dart';

part 'keep_auth_provider.g.dart';

@riverpod
Future<KeepAuth?> getKeepAuth(
  GetKeepAuthRef ref,
) async {
  final keepAuthRepository =
      await ref.watch(keepAuthRepositoryInstanceProvider.future);
  return keepAuthRepository.getKeepAuth();
}

@riverpod
Future<void> createKeepAuth(
  CreateKeepAuthRef ref,
  bool value,
) async {
  final keepAuthRepository =
      await ref.watch(keepAuthRepositoryInstanceProvider.future);
  await keepAuthRepository.createKeepAuth(value);
}

@riverpod
Future<void> setAuth(
  SetAuthRef ref,
  bool value,
) async {
  final keepAuthRepository =
      await ref.watch(keepAuthRepositoryInstanceProvider.future);
  await keepAuthRepository.setAuth(value);
}
