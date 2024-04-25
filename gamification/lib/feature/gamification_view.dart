import 'package:flutter/material.dart';
import 'package:gamification/core/extensions/context_extension.dart';
import 'package:gamification/feature/gamification_icon_manager.dart';
import 'package:gamification/feature/widgets/gamification_alert.dart';
import 'package:gamification/feature/widgets/gamification_currency.dart';
import 'package:gamification/feature/widgets/gamification_mission_list.dart';
import 'package:gamification/feature/widgets/gamification_profile.dart';
import 'package:gamification/feature/widgets/gamification_tabbar.dart';

class GamificationView extends StatefulWidget {
  const GamificationView({super.key});

  @override
  State<GamificationView> createState() => _GamificationViewState();
}

class _GamificationViewState extends State<GamificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(
          color: context.colorScheme.scrim,
        ),
        actions: [
          IconButton(
              color: context.colorScheme.scrim,
              onPressed: () {},
              icon: GamificationIconManager.instance.settingIcon)
        ],
      ),
      body: const Column(
        children: [
          GamificationProfile(),
          GamificationCurrency(),
          GamificationTabbar(),
          GamificationMissionList(),
          GamificationAlert(),
        ],
      ),
    );
  }
}
