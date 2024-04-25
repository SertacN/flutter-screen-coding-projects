import 'package:flutter/material.dart';
import 'package:gamification/core/extensions/context_extension.dart';
import 'package:gamification/feature/constants/gamification_constant.dart';
import 'package:gamification/feature/enums/gamification_padding_enum.dart';
import 'package:gamification/feature/gamification_icon_manager.dart';

class GamificationAlert extends StatelessWidget {
  const GamificationAlert({super.key});
  final double alertWidth = 340;
  final double alertHeight = 80;
  final double iconSize = 36;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: context.colorScheme.surface,
      ),
      width: alertWidth,
      height: alertHeight,
      child: Row(
        children: [
          Padding(
            padding: GamificationPaddingEnum.medium.paddingRight,
            child: Icon(
              GamificationIconManager.instance.lampIcon,
              size: iconSize,
            ),
          ),
          Expanded(
            child: Text(
              GamificationConstant.missionAlert,
              style: context.textTheme.titleSmall
                  ?.copyWith(color: context.colorScheme.background),
            ),
          ),
          const CloseButton()
        ],
      ),
    );
  }
}
