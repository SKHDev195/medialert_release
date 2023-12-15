import '../../models/custom_error.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'theme_state.dart';

final class ThemeProvider extends StateNotifier<ThemeState> {
  ThemeProvider()
      : super(
          ThemeState.initial(),
        );

  void switchTheme() {
    bool currentTheme = state.isDark;
    state = state.copyWith(
      isDark: !currentTheme,
    );
  }
}
