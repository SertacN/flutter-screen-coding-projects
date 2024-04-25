import 'package:flutter/material.dart';
import 'package:gamification/core/extensions/context_extension.dart';

class GamificationCurrencyContent extends StatelessWidget {
  const GamificationCurrencyContent({
    super.key,
    required this.icon,
    required this.current,
    required this.iconColor,
    required this.textColor,
  });
  final IconData icon;
  final Color iconColor;
  final int current;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        Text(
          current.toString(),
          style: context.textTheme.titleMedium?.copyWith(color: textColor),
        ),
      ],
    );
  }
}
