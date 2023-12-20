import 'package:isar/isar.dart';

import '../models/theme.dart';

final class ThemeRepository {
  ThemeRepository({
    required this.isar,
  });

  final Isar isar;

  Future<Theme?> getTheme() async {
    final theme = await isar.collection<Theme>().get(1);
    return theme;
  }

  Future<void> createTheme(Theme theme) async {
    await isar.writeTxn(() async {
      isar.collection<Theme>().put(theme);
    });
  }

  Future<void> setTheme(bool value) async {
    final theme = await isar.collection<Theme>().get(1);
    await isar.writeTxn(() async {
      theme!.isDark = value;
      await isar.collection<Theme>().put(theme);
    });
  }
}
