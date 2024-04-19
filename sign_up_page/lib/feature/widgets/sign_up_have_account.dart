part of '../sign_up_view.dart';

class _SignUpHaveAccount extends StatelessWidget {
  const _SignUpHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SignUpPadding.low.verticalPadding,
      child: Center(
        child: Text.rich(TextSpan(children: [
          const TextSpan(text: SignUpKeys.haveAccount),
          TextSpan(
              text: SignUpKeys.signIn,
              style: context.textTheme.titleMedium
                  ?.copyWith(color: context.colorScheme.secondary))
        ])),
      ),
    );
  }
}
