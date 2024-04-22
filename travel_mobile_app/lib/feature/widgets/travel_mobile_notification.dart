part of '../travel_mobile_view.dart';

class _TravelMobileNotification extends StatelessWidget {
  const _TravelMobileNotification();

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Badge(
          alignment: Alignment.topLeft,
          child: TravelMobileIconManager.instance.notificationIcon,
        ));
  }
}
