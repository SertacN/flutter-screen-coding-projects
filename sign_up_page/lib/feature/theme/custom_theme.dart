import 'package:flutter/material.dart';
import 'package:sign_up_page/feature/sign_up_colors.dart';

class CustomDarkTheme {
  final ThemeData themeData = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(backgroundColor: SignUpColors.backGround()),
      scaffoldBackgroundColor: const SignUpColors.backGround(),
      colorScheme: ColorScheme.dark(
        secondary: SignUpColors.blue(),
        primary: SignUpColors.deepPurple(),
        onBackground: SignUpColors.grey(),
        onSecondary: SignUpColors.darkGrey(),
      ));
}
