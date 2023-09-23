import 'package:flutter/material.dart';

class AppColors {
  final Color accent1 = const Color(0xFF635985);
  final Color accent2 = const Color(0xFF443C68);
  final Color accent3 = const Color(0xFF393053);
  final Color body = const Color(0xFF18122B);
  final Color black = const Color(0xFF1E1B18);
  final Color white = const Color(0xFF1E1B18);
  final Color greyStrong = const Color(0xFF272625);
  final Color greyMedium = const Color(0xFF9D9995);

  // for handling dart and light theme
  final bool isDark = false;

  ThemeData getThemeData() {
    // creating text theme and color scheme for the app
    TextTheme txtTheme =
        (isDark ? ThemeData.dark() : ThemeData.light()).textTheme;
    Color txtColor = Colors.white;
    ColorScheme colorScheme = ColorScheme(
      brightness: isDark ? Brightness.dark : Brightness.light,
      primary: accent1,
      primaryContainer: accent1,
      secondary: accent1,
      secondaryContainer: accent1,
      background: accent2,
      surface: accent2,
      onBackground: txtColor,
      onSurface: txtColor,
      onError: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      error: Colors.red.shade400,
    );
    var themeData =
        ThemeData.from(colorScheme: colorScheme, textTheme: txtTheme).copyWith(
      textSelectionTheme: TextSelectionThemeData(cursorColor: accent1),
      highlightColor: accent1,
    );

    return themeData;
  }
}
