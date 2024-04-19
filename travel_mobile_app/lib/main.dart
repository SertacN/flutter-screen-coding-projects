import 'package:flutter/material.dart';
import 'package:travel_mobile_app/feature/theme/custom_theme.dart';
import 'package:travel_mobile_app/feature/travel_mobile_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomLightTheme().themeData,
      title: 'Travel Mobil App',
      home: const TravelMobileView(),
    );
  }
}
