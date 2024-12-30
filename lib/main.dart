import 'package:flutter/material.dart';
import 'package:productivity_app/theme/app_theme.dart';
import 'package:productivity_app/screens/home_screen.dart';
import 'package:productivity_app/routes.dart';

void main() {
  runApp(const ProductivityApp());
}

class ProductivityApp extends StatelessWidget {
  const ProductivityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Productivity App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
      routes: routes,
    );
  }
}