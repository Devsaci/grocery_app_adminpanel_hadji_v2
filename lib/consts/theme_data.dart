import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor:
          isDarkTheme ? Colors.teal.shade900 : Colors.teal.shade50,
      primaryColor: Colors.blue,
      colorScheme: ThemeData().colorScheme.copyWith(
          secondary:
              isDarkTheme ? const Color(0xFF1a1f3c) : const Color(0xFFE8FDFD),
          brightness: isDarkTheme ? Brightness.dark : Brightness.light),
      cardColor:
      isDarkTheme ? const Color(0xFF0a0d2c) : const Color(0xFFF2FDFD),


    );
  }
}
