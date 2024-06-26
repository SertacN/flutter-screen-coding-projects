import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum OnBoardPadding {
  low(12),
  medium(24),
  hight(36),
  center(50);

  final double value;

  const OnBoardPadding(this.value);

  EdgeInsets get paddingAll => EdgeInsets.all(value);
  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: value);
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: value);
}
