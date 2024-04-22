import 'package:flutter/material.dart';

@immutable
class ImageConstants {
  const ImageConstants._();

  static final String travelJapan = 'travel_japan'.toJpg;
  static final String travelAmerica = 'travel_america'.toJpg;
}

extension _StringPath on String {
  String get toJpg => 'assets/jpg/$this.jpg';
}
