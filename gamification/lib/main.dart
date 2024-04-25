import 'package:flutter/material.dart';
import 'package:gamification/feature/gamification_view.dart';
import 'package:gamification/feature/theme/custom_dark_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomDarkTheme().themeData,
      title: 'Gamification',
      home: const GamificationView(),
    );
  }
}
