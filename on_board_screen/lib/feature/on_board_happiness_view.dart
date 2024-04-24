import 'package:flutter/material.dart';
import 'package:on_board_screen/core/widgets/column_alignment_start.dart';
import 'package:on_board_screen/feature/constants/on_board_image_constant.dart';
import 'package:on_board_screen/feature/constants/on_board_keys.dart';
import 'package:on_board_screen/feature/widgets/on_board_content.dart';
import 'package:on_board_screen/feature/widgets/on_board_description.dart';
import 'package:on_board_screen/feature/widgets/on_board_image.dart';
import 'package:on_board_screen/feature/widgets/on_board_title_text.dart';

class OnBoardHappinessView extends StatelessWidget {
  const OnBoardHappinessView({super.key});

  @override
  Widget build(BuildContext context) {
    return ColumnAlignmentStart(children: [
      const OnBoardTitleText(title: OnBoardKeys.happinessTitle),
      const OnBoardDescription(description: OnBoardKeys.happinessDescription),
      OnBoardImage(imagePath: OnBoardImageConstant.happinessLogin),
      const OnBoardContent(content: OnBoardKeys.happinessContent)
    ]);
  }
}
