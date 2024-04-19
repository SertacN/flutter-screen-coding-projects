import 'package:flutter/material.dart';

@immutable
final class TravelColor extends Color {
  TravelColor.red() : super(Colors.red.value);
  TravelColor.lightRed() : super(Colors.red[200]?.value ?? Colors.red.value);
  TravelColor.grey() : super(Colors.grey.value);
  TravelColor.lightPink() : super(const Color(0xffFEFAF9).value);
}
