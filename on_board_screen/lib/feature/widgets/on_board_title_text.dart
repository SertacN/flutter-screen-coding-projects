import 'package:flutter/material.dart';
import 'package:on_board_screen/core/extension/context_extension.dart';
import 'package:on_board_screen/feature/enums/on_board_padding_enum.dart';

class OnBoardTitleText extends StatelessWidget {
  const OnBoardTitleText({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: OnBoardPadding.low.paddingVertical,
      child: Text(
        title,
        style: context.textTheme.labelLarge,
      ),
    );
  }
}
