import 'package:flutter/material.dart';
import 'package:on_board_screen/core/extension/context_extension.dart';

class OnBoardDescription extends StatelessWidget {
  const OnBoardDescription({super.key, required this.description});
  final String description;
  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: context.textTheme.headlineSmall
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
