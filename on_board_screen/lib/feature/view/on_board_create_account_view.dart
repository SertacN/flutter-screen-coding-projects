import 'package:flutter/material.dart';
import 'package:on_board_screen/core/widgets/column_alignment_start.dart';
import 'package:on_board_screen/feature/constants/on_board_image_constant.dart';
import 'package:on_board_screen/feature/constants/on_board_keys.dart';
import 'package:on_board_screen/feature/widgets/on_board_content.dart';
import 'package:on_board_screen/feature/widgets/on_board_description.dart';
import 'package:on_board_screen/feature/widgets/on_board_image.dart';
import 'package:on_board_screen/feature/widgets/on_board_title_text.dart';

class OnBoardCreateAccountView extends StatelessWidget {
  const OnBoardCreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return ColumnAlignmentStart(children: [
      const OnBoardTitleText(title: OnBoardKeys.createAccount),
      const OnBoardDescription(
          description: OnBoardKeys.createAccountDescription),
      OnBoardImage(imagePath: OnBoardImageConstant.createAcccount),
      const OnBoardContent(content: OnBoardKeys.createAccountContent)
    ]);
  }
}
