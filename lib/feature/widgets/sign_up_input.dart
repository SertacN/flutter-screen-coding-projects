import 'package:flutter/material.dart';
import 'package:sign_up_page/core/normal_textfield.dart';
import 'package:sign_up_page/feature/sign_up_padding.dart';

class SignUpInput extends StatelessWidget {
  const SignUpInput(
      {super.key,
      required title,
      required controller,
      required visiblePassword,
      keyboardType = TextInputType.text,
      icon})
      : _controller = controller,
        _title = title,
        _keyboardType = keyboardType,
        _visiblePassword = visiblePassword,
        _icon = icon;

  final String _title;
  final TextEditingController _controller;
  final bool _visiblePassword;
  final TextInputType _keyboardType;
  final Widget? _icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: SignUpPadding.low.verticalPadding,
          child: Text(_title),
        ),
        NormalTextField(
          controller: _controller,
          visiblePassword: _visiblePassword,
          keyboardType: _keyboardType,
          icon: _icon,
        )
      ],
    );
  }
}
