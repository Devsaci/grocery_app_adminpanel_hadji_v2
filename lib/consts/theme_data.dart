import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: isDarkTheme ? Colors.amber.shade50 : Colors.amber.shade900,
      ),
      scaffoldBackgroundColor:
          isDarkTheme ? Colors.amber.shade900 : Colors.amber.shade50,
      primaryColor: Colors.amber,
      colorScheme: ThemeData().colorScheme.copyWith(
          secondary: isDarkTheme ? Colors.teal.shade900 : Colors.teal.shade50,
          brightness: isDarkTheme ? Brightness.dark : Brightness.light),
      cardColor:
          isDarkTheme ? const Color(0xFF0a0d2c) : const Color(0xFFF2FDFD),
      canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme
              ? const ColorScheme.dark()
              : const ColorScheme.light()),
    );
  }
}
