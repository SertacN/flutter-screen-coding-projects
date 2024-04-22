// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../sign_up_view.dart';

class _SignUpButton extends StatelessWidget {
  const _SignUpButton({
    required this.onPressed,
    required this.title,
  });
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SignUpPadding.low.verticalPadding,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: _buttonBorderRadius()),
              backgroundColor: context.colorScheme.primary),
          onPressed: onPressed,
          child: Padding(
            padding: SignUpPadding.medium.verticalPadding,
            child: Center(
                child: Text(
              title,
              style: context.textTheme.titleMedium,
            )),
          )),
    );
  }

  BorderRadius _buttonBorderRadius() => const BorderRadius.all(Radius.circular(16));
}
