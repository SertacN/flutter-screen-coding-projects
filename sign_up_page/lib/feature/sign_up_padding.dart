import 'package:flutter/material.dart';

enum SignUpPadding {
  low(10),
  medium(20),
  hight(32);

  final double value;

  const SignUpPadding(this.value);

  EdgeInsets get verticalPadding => EdgeInsets.symmetric(vertical: value);
  EdgeInsets get horizontalPadding => EdgeInsets.symmetric(horizontal: value);
}
