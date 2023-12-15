part of 'theme_provider.dart';

final class ThemeState extends Equatable {
  const ThemeState({
    required this.isDark,
    this.error,
  });

  final bool isDark;
  final CustomError? error;

  factory ThemeState.initial() {
    return const ThemeState(
      isDark: true,
    );
  }

  ThemeState copyWith({
    bool? isDark,
    CustomError? error,
  }) {
    return ThemeState(
      isDark: isDark ?? this.isDark,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [
        isDark,
      ];
}
