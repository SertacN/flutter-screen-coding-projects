import 'package:flutter/material.dart';
import 'package:on_board_screen/feature/constants/on_board_keys.dart';
import 'package:on_board_screen/feature/constants/on_board_position.dart';

class OnBoardSkipButton extends StatefulWidget {
  const OnBoardSkipButton(
      {super.key,
      required this.currentPageIndex,
      required this.onUpdateCurrentPageIndex});
  final int currentPageIndex;
  final void Function(int) onUpdateCurrentPageIndex;
  @override
  State<OnBoardSkipButton> createState() => _OnBoardButtonState();
}

class _OnBoardButtonState extends State<OnBoardSkipButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: OnBoardPosition.verticalPosition,
      left: OnBoardPosition.horizontalPosition,
      child: TextButton(
          onPressed: () {
            if (widget.currentPageIndex == 0) {
              return;
            }
            widget.onUpdateCurrentPageIndex(widget.currentPageIndex - 1);
          },
          child: const Text(OnBoardKeys.skipButton)),
    );
  }
}
