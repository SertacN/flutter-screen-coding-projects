import 'package:flutter/material.dart';
import 'package:on_board_screen/feature/enums/on_board_padding_enum.dart';
import 'package:on_board_screen/feature/on_board_create_account_view.dart';
import 'package:on_board_screen/feature/on_board_happiness_view.dart';
import 'package:on_board_screen/feature/on_board_login_view.dart';
import 'package:on_board_screen/feature/widgets/on_board_next_button.dart';
import 'package:on_board_screen/feature/widgets/on_board_skip_button.dart';
import 'package:on_board_screen/feature/widgets/on_board_indicator.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({super.key});

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView>
    with TickerProviderStateMixin {
  late PageController _pageController;
  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    _tabController.dispose();
  }

  void _onUpdateCurrentPageIndex(int index) {
    _tabController.index = index;
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: OnBoardPadding.medium.paddingHorizontal,
          child: Stack(children: [
            PageView(
              controller: _pageController,
              onPageChanged: _onUpdateCurrentPageIndex,
              children: const [
                OnBoardCreateAccountView(),
                OnBoardLoginView(),
                OnBoardHappinessView(),
              ],
            ),
            Positioned(
              left: (MediaQuery.of(context).size.width - 200) / 2,
              bottom: 200,
              child: OnBoardIndicator(
                  currentPageIndex: _currentIndex,
                  tabController: _tabController,
                  onUpdateCurrentPageIndex: _onUpdateCurrentPageIndex),
            ),
            OnBoardSkipButton(
              currentPageIndex: _currentIndex,
              onUpdateCurrentPageIndex: _onUpdateCurrentPageIndex,
            ),
            OnBoardNextButton(
              currentPageIndex: _currentIndex,
              onUpdateCurrentPageIndex: _onUpdateCurrentPageIndex,
            )
          ]),
        ));
  }
}
