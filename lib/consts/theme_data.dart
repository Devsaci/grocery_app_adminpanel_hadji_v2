import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor:
          isDarkTheme ? Colors.teal.shade900 : Colors.teal.shade50,
      primaryColor: Colors.blue,
    );
  }
}
