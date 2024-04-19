part of '../travel_mobile_view.dart';

class TravelAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TravelAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.colorScheme.onBackground,
      title: const Text(TravelMobileKeys.welcomeTitle),
      titleTextStyle: context.textTheme.headlineMedium
          ?.copyWith(fontWeight: FontWeight.bold),
      actions: const [_TravelMobileNotification()],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
