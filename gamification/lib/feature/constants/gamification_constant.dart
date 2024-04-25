import 'package:flutter/material.dart';

@immutable
final class GamificationConstant {
  const GamificationConstant._();

  static const GamificationConstant _instance = GamificationConstant._();
  static GamificationConstant get instance => _instance;

  static const String userName = 'Penkej';
  static const String missions = 'MISSIONS';
  static const String weapons = 'WEAPONS';
  static const String avatar = 'AVATAR';

  static const String missionOne = 'Burn 5 heroes alive';
  static const String missionTwo = 'Kill 5 heroes with a bomb';
  static const String missionThree = 'Crush 2 heroes with a tank';
  static const String missionFour = 'Fry 3 heroes with electric shock';

  static const String missionAlert =
      'Kill superheroes to unlock weapons, features, and costumes. KILL KILL KILL!';
}
