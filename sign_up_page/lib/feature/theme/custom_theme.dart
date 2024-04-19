import 'package:flutter/material.dart';
import 'package:sign_up_page/feature/sign_up_colors.dart';

class CustomDarkTheme {
  final ThemeData themeData = ThemeData.dark().copyWith(
      colorScheme: ColorScheme.light(
    secondary: SignUpColors.blue(),
    primary: SignUpColors.deepPurple(),
    onBackground: SignUpColors.grey(),
    onSecondary: SignUpColors.darkGrey(),
  ));
}
