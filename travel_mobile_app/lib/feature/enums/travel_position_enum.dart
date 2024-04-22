enum PositionKeys {
  top(14),
  right(30);

  final double value;

  const PositionKeys(this.value);

  double get topPosition => value;
  double get rightPosition => value;
}
