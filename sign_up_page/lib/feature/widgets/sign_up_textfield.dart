part of '../sign_up_view.dart';

class SignUpTextField extends StatelessWidget {
  const SignUpTextField(
      {super.key,
      required title,
      required controller,
      keyboardType = TextInputType.text,
      visiblePassword = false,
      required prefixIcon,
      suffixIcon})
      : _title = title,
        _controller = controller,
        _keyboardType = keyboardType,
        _visiblePassword = visiblePassword,
        _prefixIcon = prefixIcon,
        _suffixIcon = suffixIcon;

  final String _title;
  final TextEditingController _controller;
  final TextInputType _keyboardType;
  final bool _visiblePassword;
  final IconData _prefixIcon;
  final IconData? _suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SignUpPadding.medium.verticalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_title,
              style: context.textTheme.titleMedium
                  ?.copyWith(color: context.colorScheme.onBackground)),
          TextField(
            textInputAction: TextInputAction.next,
            controller: _controller,
            keyboardType: _keyboardType,
            obscureText: _visiblePassword,
            decoration: InputDecoration(
              prefixIcon:
                  Icon(_prefixIcon, color: context.colorScheme.onBackground),
              suffixIcon:
                  Icon(_suffixIcon, color: context.colorScheme.onBackground),
            ),
          ),
        ],
      ),
    );
  }
}
