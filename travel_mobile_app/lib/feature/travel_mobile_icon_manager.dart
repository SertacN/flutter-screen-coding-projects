import 'package:flutter/material.dart';

final class TravelMobileIconManager {
  TravelMobileIconManager._();

  static final TravelMobileIconManager _instance = TravelMobileIconManager._();
  static TravelMobileIconManager get instance => _instance;

  final Icon notificationIcon = const Icon(Icons.notifications_none_outlined);
  final IconData searchIcon = Icons.search_outlined;
  final IconData compareIcon = Icons.compare_arrows_outlined;
}
