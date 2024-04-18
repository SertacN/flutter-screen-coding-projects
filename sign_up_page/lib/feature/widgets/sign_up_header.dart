part of '../sign_up_view.dart';

class _SignUpHeader extends StatelessWidget {
  const _SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SignUpPadding.hight.verticalPadding,
      child: Text(
        SignUpKeys.headerTitle,
        style: Theme.of(context).textTheme.displaySmall,
      ),
    );
  }
}
