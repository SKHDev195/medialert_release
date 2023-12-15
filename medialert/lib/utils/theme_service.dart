import 'package:flutter/material.dart';

final class ThemeService extends ChangeNotifier {
  bool _isDark = true;

  bool get isDark => _isDark;

  set isDark(bool newValue) {
    if (_isDark != newValue) {
      _isDark = newValue;
      notifyListeners();
    }
  }
}
