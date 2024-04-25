import 'package:flutter/material.dart';

enum GamificationPaddingEnum {
  low(8),
  medium(16),
  hight(24);

  final double value;

  const GamificationPaddingEnum(this.value);

  EdgeInsets get paddingAll => EdgeInsets.all(value);
  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: value);
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: value);
  EdgeInsets get paddingRight => EdgeInsets.only(right: value);
}
