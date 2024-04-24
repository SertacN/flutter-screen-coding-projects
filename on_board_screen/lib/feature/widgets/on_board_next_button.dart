import 'package:flutter/material.dart';
import 'package:on_board_screen/core/extension/context_extension.dart';
import 'package:on_board_screen/feature/constants/on_board_keys.dart';
import 'package:on_board_screen/feature/constants/on_board_position.dart';

class OnBoardNextButton extends StatefulWidget {
  const OnBoardNextButton(
      {super.key,
      required this.currentPageIndex,
      required this.onUpdateCurrentPageIndex});
  final int currentPageIndex;
  final void Function(int) onUpdateCurrentPageIndex;

  @override
  State<OnBoardNextButton> createState() => _OnBoardNextButtonState();
}

const double bottomPosition = 50;
const double rightPosition = 24;

class _OnBoardNextButtonState extends State<OnBoardNextButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: OnBoardPosition.verticalPosition,
      right: OnBoardPosition.horizontalPosition,
      child: TextButton(
          onPressed: () {
            if (widget.currentPageIndex == 2) {
              return;
            }
            widget.onUpdateCurrentPageIndex(widget.currentPageIndex + 1);
          },
          child: Text(
            OnBoardKeys.nextButton,
            style: context.textTheme.titleSmall
                ?.copyWith(color: context.colorScheme.primary),
          )),
    );
  }
}
