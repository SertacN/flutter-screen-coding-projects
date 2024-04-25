import 'package:flutter/material.dart';
import 'package:gamification/core/extensions/context_extension.dart';
import 'package:gamification/feature/constants/gamification_constant.dart';
import 'package:gamification/feature/enums/gamification_padding_enum.dart';
import 'package:gamification/feature/gamification_icon_manager.dart';
import 'package:gamification/feature/widgets/gamification_tab.dart';

class GamificationTabbar extends StatelessWidget {
  const GamificationTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: GamificationPaddingEnum.hight.paddingVertical,
      child: DefaultTabController(
          length: 3,
          child: TabBar(
              unselectedLabelColor: context.colorScheme.scrim,
              indicatorColor: Colors.transparent,
              dividerHeight: 0,
              tabs: [
                GamificationTab(
                  text: GamificationConstant.missions,
                  iconData: GamificationIconManager.instance.missionIcon,
                ),
                GamificationTab(
                  text: GamificationConstant.weapons,
                  iconData: GamificationIconManager.instance.weaponIcon,
                ),
                GamificationTab(
                  text: GamificationConstant.avatar,
                  iconData: GamificationIconManager.instance.avatarIcon,
                ),
              ])),
    );
  }
}
