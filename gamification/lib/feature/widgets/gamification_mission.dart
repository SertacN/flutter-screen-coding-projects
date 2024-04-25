import 'package:flutter/material.dart';
import 'package:gamification/core/extensions/context_extension.dart';
import 'package:gamification/feature/enums/gamification_padding_enum.dart';

class GamificationMission extends StatelessWidget {
  const GamificationMission(
      {super.key,
      required this.missionIcon,
      required this.missionText,
      required this.missionRewardNumber,
      required this.sliderValue});
  final IconData missionIcon;
  final String missionText;
  final int missionRewardNumber;
  final int sliderValue;

  final double _iconSize = 48;
  final double _sliderWidth = 250;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: GamificationPaddingEnum.hight.paddingHorizontal,
      child: Padding(
        padding: GamificationPaddingEnum.medium.paddingVertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              missionIcon,
              color: context.colorScheme.secondary,
              size: _iconSize,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  missionText,
                  style: context.textTheme.titleMedium
                      ?.copyWith(color: context.colorScheme.secondary),
                ),
                Text('EARN $missionRewardNumber COINS'),
                SizedBox(
                  width: _sliderWidth,
                  child: Slider(
                    activeColor: context.colorScheme.secondary,
                    divisions: 5,
                    max: 5,
                    value: sliderValue.toDouble(),
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
            Text('$sliderValue/5')
          ],
        ),
      ),
    );
  }
}
