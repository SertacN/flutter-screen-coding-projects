enum GamificationNumberEnum {
  gold(143),
  healt(12),
  missionOneReward(25),
  missionTwoReward(40),
  missionThreeReward(30),
  missionFourReward(50),
  sliderValueOne(4),
  sliderValueTwo(1),
  sliderValueThree(3),
  sliderValueFour(4);

  final int value;

  const GamificationNumberEnum(this.value);

  int get toNumber => value;
}
