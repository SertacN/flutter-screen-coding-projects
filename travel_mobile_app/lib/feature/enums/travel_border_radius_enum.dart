import 'package:flutter/material.dart';

enum TravelBorderRadiusSize {
  low(12),
  medium(24),
  hight(32),
  card(16);

  final double value;

  const TravelBorderRadiusSize(this.value);

  BorderRadius get borderRadiusAll => BorderRadius.all(Radius.circular(value));
}
