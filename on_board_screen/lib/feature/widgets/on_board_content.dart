import 'package:flutter/material.dart';
import 'package:on_board_screen/core/extension/context_extension.dart';

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({super.key, required this.content});
  final String content;
  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: context.textTheme.labelLarge,
      textAlign: TextAlign.center,
    );
  }
}
