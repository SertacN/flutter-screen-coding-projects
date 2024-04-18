part of '../sign_up_view.dart';

final class _SignUpHeaderTitle extends StatelessWidget {
  const _SignUpHeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(SignUpKeys.headerTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold)),
        Padding(
          padding: SignUpPadding.low.verticalPadding,
          child: Text(
            SignUpKeys.headerDescription,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
