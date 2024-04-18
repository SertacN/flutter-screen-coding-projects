import 'package:flutter/material.dart';
import 'package:sign_up_page/feature/sign_up_padding.dart';
import 'package:sign_up_page/feature/sign_up_size.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SignUpPadding.hight.verticalPadding,
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          height: SignUpSize.signUpButtonSize,
          child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: SignUpSize.lowRadius,
                gradient: const LinearGradient(
                    colors: [Colors.green, Colors.blue, Colors.purple]),
              ),
              child: Center(
                  child: Text(
                'Sign Up',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.background),
              ))),
        ),
      ),
    );
  }
}
