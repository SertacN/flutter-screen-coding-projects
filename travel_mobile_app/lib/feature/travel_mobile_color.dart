import 'package:flutter/material.dart';

@immutable
final class TravelColor extends Color {
  TravelColor.red() : super(Colors.red.value);
  TravelColor.lightRed() : super(Colors.red[200]?.value ?? Colors.red.value);
  TravelColor.pink() : super(Colors.red[50]?.value ?? Colors.pink.value);
  TravelColor.grey() : super(Colors.grey.value);
  TravelColor.lightPink() : super(const Color(0xffFEFAF9).value);
  TravelColor.lightGreen()
      : super(Colors.green[50]?.value ?? Colors.green.value);
  TravelColor.lightBrown()
      : super(Colors.brown[100]?.value ?? Colors.brown.value);
  TravelColor.lightYellow()
      : super(Colors.yellow[50]?.value ?? Colors.yellow.value);
  TravelColor.lightBlue() : super(Colors.blue[100]?.value ?? Colors.blue.value);
}
