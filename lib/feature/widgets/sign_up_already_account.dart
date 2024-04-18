import 'package:flutter/material.dart';
import 'package:sign_up_page/feature/sign_up_padding.dart';

class SignUpAlreadyAccount extends StatelessWidget {
  const SignUpAlreadyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: SignUpPadding.medium.verticalPadding,
        child: Text.rich(TextSpan(text: 'Already have an account?', children: [
          TextSpan(
              text: ' Sign In',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.green, decoration: TextDecoration.underline))
        ])),
      ),
    );
  }
}
