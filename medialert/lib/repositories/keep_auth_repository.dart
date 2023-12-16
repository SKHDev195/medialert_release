import 'package:isar/isar.dart';
import '../models/keep_auth.dart';

final class KeepAuthRepository {
  KeepAuthRepository({
    required this.isar,
  });

  final Isar isar;

  Future<KeepAuth> getKeepAuth() async {
    final keepAuth = await isar.collection<KeepAuth>().get(1);
    return keepAuth!;
  }

  Future<void> createKeepAuth() async {
    final keepAuth = KeepAuth(
      isEnabled: false,
    );
    await isar.writeTxn(() async {
      isar.collection<KeepAuth>().put(keepAuth);
    });
  }

  Future<void> switchAuth() async {
    final keepAuth = await isar.collection<KeepAuth>().get(1);
    await isar.writeTxn(() async {
      keepAuth!.isEnabled = !keepAuth.isEnabled;
      await isar.collection<KeepAuth>().put(keepAuth);
    });
  }
}
