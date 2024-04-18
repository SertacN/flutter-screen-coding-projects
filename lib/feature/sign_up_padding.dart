import 'package:flutter/material.dart';

enum SignUpPadding {
  low(8),
  medium(14),
  hight(20);

  final double value;

  const SignUpPadding(this.value);

  EdgeInsets get horizontalPadding => EdgeInsets.symmetric(horizontal: value);
  EdgeInsets get verticalPadding => EdgeInsets.symmetric(vertical: value);
}
