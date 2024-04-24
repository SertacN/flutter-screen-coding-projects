import 'package:flutter/material.dart';
import 'package:on_board_screen/core/extension/context_extension.dart';
import 'package:on_board_screen/feature/enums/on_board_padding_enum.dart';

class OnBoardIndicator extends StatelessWidget {
  const OnBoardIndicator(
      {super.key,
      required this.currentPageIndex,
      required this.tabController,
      required this.onUpdateCurrentPageIndex});
  final int currentPageIndex;
  final TabController tabController;
  final void Function(int) onUpdateCurrentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: OnBoardPadding.center.paddingHorizontal,
      child: Row(
        children: [
          TabPageSelector(
            controller: tabController,
            color: context.colorScheme.background,
            selectedColor: context.colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
