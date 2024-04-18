import 'package:flutter/material.dart';
import 'package:sign_up_page/feature/sign_up_size.dart';

class NormalTextField extends StatelessWidget {
  const NormalTextField(
      {super.key,
      controller,
      keyboardType = TextInputType.text,
      visiblePassword = false,
      icon})
      : _controller = controller,
        _keyboardType = keyboardType,
        _visiblePassword = visiblePassword,
        _icon = icon;

  final TextEditingController? _controller;
  final TextInputType? _keyboardType;
  final bool _visiblePassword;
  final Widget? _icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: _controller,
        keyboardType: _keyboardType,
        obscureText: _visiblePassword,
        decoration: InputDecoration(
          suffixIcon: _icon,
          fillColor:
              Theme.of(context).colorScheme.onBackground.withOpacity(0.1),
          filled: true,
          border: OutlineInputBorder(
              borderRadius: SignUpSize.lowRadius, borderSide: BorderSide.none),
        ));
  }
}
