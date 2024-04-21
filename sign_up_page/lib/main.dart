import 'package:flutter/material.dart';
import 'package:sign_up_page/feature/sign_up_view.dart';
import 'package:sign_up_page/feature/theme/custom_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomDarkTheme().themeData,
      title: 'Sign Up Page',
      home: const SigUpView(),
    );
  }
}
