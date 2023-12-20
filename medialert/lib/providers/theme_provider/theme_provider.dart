import 'package:medialert/providers/theme_repository_provider/theme_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/theme.dart';

part 'theme_provider.g.dart';

@riverpod
Future<Theme?> getTheme(GetThemeRef ref) async {
  final themeRepository =
      await ref.watch(themeRepositoryInstanceProvider.future);
  return themeRepository.getTheme();
}

@riverpod
Future<void> createTheme(
  CreateThemeRef ref,
  Theme theme,
) async {
  final themeRepository =
      await ref.watch(themeRepositoryInstanceProvider.future);
  await themeRepository.createTheme(theme);
}

@riverpod
Future<void> setTheme(
  SetThemeRef ref,
  bool value,
) async {
  final themeRepository =
      await ref.watch(themeRepositoryInstanceProvider.future);
  await themeRepository.setTheme(value);
}
