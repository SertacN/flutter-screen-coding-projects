import 'package:flutter/material.dart';
import 'package:on_board_screen/core/extension/context_extension.dart';
import 'package:on_board_screen/feature/constants/on_board_keys.dart';
import 'package:on_board_screen/feature/constants/on_board_position.dart';
import 'package:on_board_screen/feature/enums/on_board_padding_enum.dart';

class OnBoardGetStartedButton extends StatelessWidget {
  const OnBoardGetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: OnBoardPosition.verticalPosition,
      right: MediaQuery.of(context).size.width * 0.25,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: context.colorScheme.primary),
          onPressed: () {},
          child: Padding(
            padding: OnBoardPadding.low.paddingAll,
            child: Text(
              OnBoardKeys.getStarted,
              style: context.textTheme.labelLarge
                  ?.copyWith(color: context.colorScheme.background),
            ),
          )),
    );
  }
}
