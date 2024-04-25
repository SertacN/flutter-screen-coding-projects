import 'package:flutter/material.dart';
import 'package:gamification/feature/constants/gamification_constant.dart';
import 'package:gamification/feature/enums/gamification_number_enum.dart';
import 'package:gamification/feature/gamification_icon_manager.dart';
import 'package:gamification/feature/widgets/gamification_mission.dart';

class GamificationMissionList extends StatelessWidget {
  const GamificationMissionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GamificationMission(
          missionIcon: GamificationIconManager.instance.fireIcon,
          missionText: GamificationConstant.missionOne,
          missionRewardNumber: GamificationNumberEnum.missionOneReward.toNumber,
          sliderValue: GamificationNumberEnum.sliderValueOne.toNumber,
        ),
        GamificationMission(
          missionIcon: GamificationIconManager.instance.bombIcon,
          missionText: GamificationConstant.missionTwo,
          missionRewardNumber: GamificationNumberEnum.missionTwoReward.toNumber,
          sliderValue: GamificationNumberEnum.sliderValueTwo.toNumber,
        ),
        GamificationMission(
          missionIcon: GamificationIconManager.instance.tankIcon,
          missionText: GamificationConstant.missionThree,
          missionRewardNumber:
              GamificationNumberEnum.missionThreeReward.toNumber,
          sliderValue: GamificationNumberEnum.sliderValueThree.toNumber,
        ),
        GamificationMission(
          missionIcon: GamificationIconManager.instance.lightningIcon,
          missionText: GamificationConstant.missionFour,
          missionRewardNumber:
              GamificationNumberEnum.missionFourReward.toNumber,
          sliderValue: GamificationNumberEnum.sliderValueFour.toNumber,
        )
      ],
    );
  }
}
