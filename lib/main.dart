import 'package:flutter/material.dart';
import 'package:sign_up_page/feature/sign_up_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Material App', home: SignUpView());
  }
}
