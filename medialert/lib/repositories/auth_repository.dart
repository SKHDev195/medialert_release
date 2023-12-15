import 'package:local_auth/local_auth.dart';

final class AuthRepository {
  AuthRepository({
    required this.auth,
  });

  final LocalAuthentication auth;

  Future<bool> authenticate() async {
    bool authenticated = await auth.authenticate(
      localizedReason: 'Authenticate to use MediAlert',
      options: const AuthenticationOptions(
        useErrorDialogs: true,
        sensitiveTransaction: true,
        biometricOnly: false,
      ),
    );

    return authenticated;
  }
}
