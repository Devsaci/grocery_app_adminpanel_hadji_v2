import 'package:flutter/material.dart';
import 'package:grocery_app_adminpanel_hadji_v2/consts/theme_data.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
