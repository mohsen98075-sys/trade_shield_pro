class RiskControlService {
  /// Calculates position size from a fixed maximum loss.
  /// This is only a calculator; it does not place trades.
  double positionSize({
    required double entry,
    required double stopLoss,
    double maxLoss = 1.50,
  }) {
    final distance = (entry - stopLoss).abs();
    if (distance <= 0) return 0;
    return maxLoss / distance;
  }
}
