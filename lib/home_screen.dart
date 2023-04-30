import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/dark_theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Admin Panel"),
      ),
      body: Center(
        child: SwitchListTile(
          title: const Text('Theme'),
          secondary: Icon(themeState.getDarkTheme
              ? Icons.dark_mode_outlined
              : Icons.light_mode_outlined),
          value: themeState.getDarkTheme,
          onChanged: (bool value) {
            themeState.setDarkTheme = value;
          },
        ),
      ),
    );
  }
}
