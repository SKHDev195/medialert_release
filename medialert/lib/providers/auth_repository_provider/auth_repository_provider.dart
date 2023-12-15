import 'package:medialert/main.dart';
import 'package:medialert/repositories/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_provider.g.dart';

@riverpod
Future<AuthRepository> authRepositoryInstance(
    AuthRepositoryInstanceRef ref) async {
  final auth = ref.watch(localAuthProvider);

  return AuthRepository(
    auth: auth,
  );
}
