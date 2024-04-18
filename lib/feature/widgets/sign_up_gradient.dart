import 'package:flutter/material.dart';

class SignUpGradient extends StatelessWidget {
  const SignUpGradient({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  stops: [0, 0.2, 0.8, 1],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.green,
                    Colors.white,
                    Colors.white,
                    Colors.orange,
                  ])),
        ),
        child
      ],
    );
  }
}
