import 'package:flutter/material.dart';
import 'package:gamification/feature/theme/gamification_color.dart';

class CustomDarkTheme {
  final ThemeData themeData = ThemeData.dark().copyWith(
      sliderTheme: const SliderThemeData()
          .copyWith(overlayShape: SliderComponentShape.noThumb),
      scaffoldBackgroundColor: GamificationColor.nautilus(),
      appBarTheme: AppBarTheme(
        backgroundColor: GamificationColor.nautilus(),
      ),
      colorScheme: const ColorScheme.dark().copyWith(
          primary: GamificationColor.vegan(),
          secondary: GamificationColor.lippie(),
          surface: GamificationColor.honeyGlow(),
          scrim: GamificationColor.horizon()));
}
