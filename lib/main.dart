import 'package:flutter/material.dart';
import 'package:grocery_app_adminpanel_hadji_v2/consts/theme_data.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';
import 'provider/dark_theme_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
    await themeChangeProvider.darkThemePrefs.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: MaterialApp(
        title: "Admin Panel",
        theme: Styles.themeData(true, context),
        home: const HomeScreen(),
      ),
    );
  }
}
