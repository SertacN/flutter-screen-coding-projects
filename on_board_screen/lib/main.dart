import 'package:flutter/material.dart';
import 'package:on_board_screen/feature/view/on_board_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'On Board Screen',
      home: OnBoardView(),
    );
  }
}
