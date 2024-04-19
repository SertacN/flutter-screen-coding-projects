part of '../travel_mobile_view.dart';

class _TravelMobileNotification extends StatelessWidget {
  const _TravelMobileNotification();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          top: PositionKeys.top.topPosition,
          right: PositionKeys.right.rightPosition,
          child: Container(
            padding: TravelMobilePadding.low.paddingAll,
            decoration: BoxDecoration(
                color: context.colorScheme.error, shape: BoxShape.circle),
          )),
      IconButton(
          onPressed: () {},
          icon: TravelMobileIconManager.instance.notificationIcon),
    ]);
  }
}
