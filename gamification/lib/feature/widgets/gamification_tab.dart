import 'package:flutter/material.dart';

class GamificationTab extends StatelessWidget {
  const GamificationTab(
      {super.key, required this.text, required this.iconData});
  final String text;
  final IconData iconData;

  final double iconSize = 36;
  @override
  Widget build(BuildContext context) {
    return Tab(
      text: text,
      icon: Icon(
        iconData,
        size: iconSize,
      ),
    );
  }
}
