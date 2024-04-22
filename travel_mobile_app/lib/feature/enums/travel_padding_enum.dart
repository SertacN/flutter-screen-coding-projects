import 'package:flutter/material.dart';

enum TravelMobilePadding {
  low(3),
  medium(8),
  hight(18),
  side(12);

  final double value;

  const TravelMobilePadding(this.value);

  EdgeInsets get paddingAll => EdgeInsets.all(value);
  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: value);
  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: value);
  EdgeInsets get paddingRight => EdgeInsets.only(right: value);
  EdgeInsets get paddingLeft => EdgeInsets.only(left: value);
}
