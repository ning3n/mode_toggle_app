import 'package:flutter/material.dart';

class ModeToggle extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onThemeToggle;

  const ModeToggle({super.key, required this.isDarkMode, required this.onThemeToggle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modo Oscuro"),
        centerTitle: true,
        backgroundColor: Colors.white54,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(isDarkMode ? 'Modo Oscuro' : 'Modo Claro'),
            SizedBox(width: 10),
            Switch(value: isDarkMode, onChanged: onThemeToggle)
          ],
        ),
      ),
    );
  }
}