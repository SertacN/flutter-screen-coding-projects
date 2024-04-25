import 'package:flutter/material.dart';

final class GamificationIconManager {
  GamificationIconManager._();

  static final GamificationIconManager _instance = GamificationIconManager._();
  static GamificationIconManager get instance => _instance;

  IconData get profileIcon => Icons.face;
  IconData get goldIcon => Icons.circle;
  IconData get heartIcon => Icons.heart_broken;
  IconData get missionIcon => Icons.assignment_outlined;
  IconData get weaponIcon => Icons.anchor_outlined;
  IconData get avatarIcon => Icons.account_circle_outlined;

  IconData get fireIcon => Icons.whatshot_outlined;
  IconData get bombIcon => Icons.circle;
  IconData get tankIcon => Icons.agriculture_outlined;
  IconData get lightningIcon => Icons.bolt;

  Icon get settingIcon => const Icon(Icons.settings);
  IconData get lampIcon => Icons.lightbulb_outline;
}
