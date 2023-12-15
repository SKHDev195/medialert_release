import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:medialert/providers/auth_repository_provider/auth_repository_provider.dart';

part 'auth_provider.g.dart';

@riverpod
Future<bool> authenticate(AuthenticateRef ref) async {
  final authRepository = await ref.watch(authRepositoryInstanceProvider.future);

  final result = await authRepository.authenticate();
  return result;
}
