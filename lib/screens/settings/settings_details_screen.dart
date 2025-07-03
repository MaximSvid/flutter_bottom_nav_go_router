import 'package:flutter/material.dart';

class SettingsDetailsScreen extends StatelessWidget {
  const SettingsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Details Screen'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Settings Details Screen!',
        ),
      ),
    );
  }
}