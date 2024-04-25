import 'package:flutter/material.dart';
import 'package:gamification/feature/gamification_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gamification',
      home: GamificationView(),
    );
  }
}
