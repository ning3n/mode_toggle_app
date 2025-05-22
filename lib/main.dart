import 'package:flutter/material.dart';
import 'package:mode_toggle_app/screens/mode_toggle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void _toggleTheme(bool value){
    setState(() {
      _isDarkMode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modo Oscuro',
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: ModeToggle(
        isDarkMode : _isDarkMode,
        onThemeToggle : _toggleTheme
      ),
    );
  }
}