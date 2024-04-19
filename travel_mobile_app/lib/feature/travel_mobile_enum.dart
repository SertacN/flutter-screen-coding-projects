import 'package:flutter/material.dart';

enum PositionKeys {
  top(14),
  right(30);

  final double value;

  const PositionKeys(this.value);

  double get topPosition => value;
  double get rightPosition => value;
}

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

enum TravelBorderRadiusSize {
  low(12),
  medium(24),
  hight(32);

  final double value;

  const TravelBorderRadiusSize(this.value);

  BorderRadius get borderRadiusAll => BorderRadius.all(Radius.circular(value));
}
