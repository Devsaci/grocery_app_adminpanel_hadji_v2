import 'package:flutter/material.dart';
import 'package:grocery_app_adminpanel_hadji_v2/consts/theme_data.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';
import 'provider/dark_theme_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
    await themeChangeProvider.darkThemePrefs.getTheme();
  }
  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
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
