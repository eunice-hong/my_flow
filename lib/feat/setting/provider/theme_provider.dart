import 'package:flutter/material.dart';

/// 앱 UI 테마 정보를 관리하는 Provider입니다.
///
/// 설정 페이지에서 UI 모드 변경 시, 앱 전체에 적용되도록 합니다.
class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  /// 테마 모드를 변경합니다.
  ///
  /// [isDarkMode]가 `true`이면 다크 모드로 변경하고, `false`이면 라이트 모드로 변경합니다.
  // ignore: avoid_positional_boolean_parameters
  void toggleTheme(bool isDarkMode) {
    _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
