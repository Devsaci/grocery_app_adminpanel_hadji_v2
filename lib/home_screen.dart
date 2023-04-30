import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Admin Panel"),
      ),
      body: Center(
        child: SwitchListTile(
          title: const Text('Theme'),
          value: false,
          onChanged: (bool value) {},
        ),
      ),
    );
  }
}
