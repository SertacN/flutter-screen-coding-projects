import 'package:flutter/material.dart';
import 'package:gamification/core/extensions/context_extension.dart';
import 'package:gamification/feature/enums/gamification_number_enum.dart';
import 'package:gamification/feature/gamification_icon_manager.dart';
import 'package:gamification/feature/widgets/gamification_currency_content.dart';

class GamificationCurrency extends StatelessWidget {
  const GamificationCurrency({super.key});
  final double boxMargin = 36;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GamificationCurrencyContent(
          icon: GamificationIconManager.instance.goldIcon,
          iconColor: context.colorScheme.surface,
          current: GamificationNumberEnum.gold.value,
          textColor: context.colorScheme.surface,
        ),
        SizedBox(width: boxMargin),
        GamificationCurrencyContent(
            icon: GamificationIconManager.instance.heartIcon,
            current: GamificationNumberEnum.healt.value,
            iconColor: context.colorScheme.secondary,
            textColor: context.colorScheme.secondary)
      ],
    );
  }
}
