import 'package:flutter/material.dart';
import 'package:travel_mobile_app/feature/travel_mobile_color.dart';

class CustomLightTheme {
  final ThemeData themeData = ThemeData.light().copyWith(
      colorScheme: ColorScheme.light(
    error: TravelColor.red(),
    primary: TravelColor.lightRed(),
    onBackground: TravelColor.lightPink(),
    onSecondary: TravelColor.grey(),
  ));
}
