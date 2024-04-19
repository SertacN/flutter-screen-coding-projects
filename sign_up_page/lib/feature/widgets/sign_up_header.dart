part of '../sign_up_view.dart';

class _SignUpHeader extends StatelessWidget {
  const _SignUpHeader();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SignUpPadding.hight.verticalPadding,
      child: Text(
        SignUpKeys.headerTitle,
        style: context.textTheme.displaySmall,
      ),
    );
  }
}
