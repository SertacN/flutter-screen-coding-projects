import 'package:flutter/material.dart';
import 'package:on_board_screen/feature/constants/on_board_keys.dart';

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
    return Padding(
      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.55),
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
