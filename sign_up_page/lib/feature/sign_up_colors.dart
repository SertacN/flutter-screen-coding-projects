import 'package:flutter/material.dart';

@immutable
final class SignUpColors extends Color {
  SignUpColors.grey() : super(Colors.grey[700]?.value ?? Colors.grey.value);
  SignUpColors.deepPurple() : super(Colors.deepPurple.value);
  SignUpColors.blue() : super(Colors.blue[700]?.value ?? Colors.blue.value);
  SignUpColors.darkGrey()
      : super(Colors.grey[850]?.value ?? Colors.black.value);
}
