import 'package:medialert/repositories/theme_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../isar_provider/isar_provider.dart';

part 'theme_repository_provider.g.dart';

@riverpod
Future<ThemeRepository> themeRepositoryInstance(
    ThemeRepositoryInstanceRef ref) async {
  final isar = await ref.watch(isarInstanceProvider.future);

  return ThemeRepository(
    isar: isar,
  );
}
