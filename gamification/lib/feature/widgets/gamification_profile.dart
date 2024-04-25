import 'package:flutter/material.dart';
import 'package:gamification/core/extensions/context_extension.dart';
import 'package:gamification/feature/constants/gamification_constant.dart';
import 'package:gamification/feature/enums/gamification_padding_enum.dart';
import 'package:gamification/feature/gamification_icon_manager.dart';

class GamificationProfile extends StatelessWidget {
  const GamificationProfile({super.key});
  final double iconSize = 64;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Icon(
            GamificationIconManager.instance.profileIcon,
            color: context.colorScheme.primary,
            size: iconSize,
          ),
        ),
        Padding(
          padding: GamificationPaddingEnum.low.paddingVertical,
          child: Text(
            GamificationConstant.userName,
            style: context.textTheme.headlineLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
