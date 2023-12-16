import 'package:isar/isar.dart';
import '../models/keep_auth.dart';

final class KeepAuthRepository {
  KeepAuthRepository({
    required this.isar,
  });

  final Isar isar;

  Future<KeepAuth?> getKeepAuth() async {
    final keepAuth = await isar.collection<KeepAuth>().get(1);
    return keepAuth;
  }

  Future<void> createKeepAuth(bool value) async {
    final keepAuth = KeepAuth(
      isEnabled: value,
    );
    await isar.writeTxn(() async {
      isar.collection<KeepAuth>().put(keepAuth);
    });
  }

  Future<void> setAuth(bool value) async {
    final keepAuth = await isar.collection<KeepAuth>().get(1);
    await isar.writeTxn(() async {
      keepAuth!.isEnabled = value;
      await isar.collection<KeepAuth>().put(keepAuth);
    });
  }
}
