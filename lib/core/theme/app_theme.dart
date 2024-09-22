import 'package:flutter/material.dart';

class AppTheme {
  static TextTheme _commonTextTheme(TextTheme base) {
    return base.copyWith(
      bodyMedium: base.bodyMedium?.copyWith(fontSize: 20),
      bodySmall: base.bodySmall?.copyWith(fontSize: 14),
      displayLarge: base.displayLarge?.copyWith(fontSize: 90,fontWeight: FontWeight.w300),
    );
  }

  static final lightMode = ThemeData.light().copyWith(
    textTheme: _commonTextTheme(ThemeData.light().textTheme),
  );
  static final darkMode = ThemeData.dark().copyWith(
    textTheme: _commonTextTheme(ThemeData.dark().textTheme),
  );
}
