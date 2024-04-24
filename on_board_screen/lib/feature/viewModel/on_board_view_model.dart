import 'package:flutter/material.dart';
import 'package:on_board_screen/feature/constants/on_board_position.dart';
import 'package:on_board_screen/feature/view/on_board_view.dart';
import 'package:on_board_screen/feature/widgets/on_board_indicator.dart';
import 'package:on_board_screen/feature/widgets/on_board_next_button.dart';
import 'package:on_board_screen/feature/widgets/on_board_skip_button.dart';

abstract class OnBoardViewModel extends State<OnBoardView>
    with TickerProviderStateMixin {
  late PageController pageController;
  late TabController tabController;
  int currentIndex = 0;
  final double indicatorLocation = 200;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
    tabController.dispose();
  }

  void onUpdateCurrentPageIndex(int index) {
    tabController.index = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
    setState(() {
      currentIndex = index;
    });
  }

  Positioned onBoardIndicator(BuildContext context) {
    return Positioned(
      left: (MediaQuery.of(context).size.width - 200) / 2,
      bottom: indicatorLocation,
      child: OnBoardIndicator(
          currentPageIndex: currentIndex,
          tabController: tabController,
          onUpdateCurrentPageIndex: onUpdateCurrentPageIndex),
    );
  }

  Positioned onBoardButtons() {
    return Positioned(
      bottom: OnBoardPosition.verticalPosition,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OnBoardSkipButton(
            currentPageIndex: currentIndex,
            onUpdateCurrentPageIndex: onUpdateCurrentPageIndex,
          ),
          OnBoardNextButton(
            currentPageIndex: currentIndex,
            onUpdateCurrentPageIndex: onUpdateCurrentPageIndex,
          ),
        ],
      ),
    );
  }
}
