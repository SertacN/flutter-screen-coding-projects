import 'package:flutter/material.dart';

final class TravelMobileIconManager {
  TravelMobileIconManager._();

  static final TravelMobileIconManager _instance = TravelMobileIconManager._();
  static TravelMobileIconManager get instance => _instance;

  final Icon notificationIcon = const Icon(Icons.notifications_none_outlined);
  final IconData searchIcon = Icons.search_outlined;
  final IconData compareIcon = Icons.compare_arrows_outlined;
  final Icon forestIcon = const Icon(Icons.forest);
  final Icon mountainIcon = const Icon(Icons.rocket_launch);
  final Icon beachIcon = const Icon(Icons.beach_access);
  final Icon adventureIcon = const Icon(Icons.blind_outlined);

  final Icon homeIcon = const Icon(Icons.home_outlined);
  final Icon travelIcon = const Icon(Icons.airplane_ticket_outlined);
  final Icon compassIcon = const Icon(Icons.compass_calibration_outlined);
  final Icon balanceIcon = const Icon(Icons.account_balance_wallet_outlined);
  final Icon accountIcon = const Icon(Icons.account_circle_outlined);
}
