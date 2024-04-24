import 'package:flutter/material.dart';
import 'package:on_board_screen/feature/enums/on_board_padding_enum.dart';
import 'package:on_board_screen/feature/view/on_board_create_account_view.dart';
import 'package:on_board_screen/feature/view/on_board_happiness_view.dart';
import 'package:on_board_screen/feature/view/on_board_login_view.dart';
import 'package:on_board_screen/feature/viewModel/on_board_view_model.dart';
import 'package:on_board_screen/feature/widgets/on_board_get_started_button.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({super.key});

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends OnBoardViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: OnBoardPadding.medium.paddingHorizontal,
          child: Stack(children: [
            PageView(
              controller: pageController,
              onPageChanged: onUpdateCurrentPageIndex,
              children: const [
                OnBoardCreateAccountView(),
                OnBoardLoginView(),
                OnBoardHappinessView(),
              ],
            ),
            onBoardIndicator(context),
            currentIndex == 2
                ? const OnBoardGetStartedButton()
                : onBoardButtons(),
          ]),
        ));
  }
}
