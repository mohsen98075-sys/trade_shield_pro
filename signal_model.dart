class SignalModel {
  final String symbol;
  final String direction;
  final double entry;
  final double stopLoss;
  final double takeProfit;

  const SignalModel({
    required this.symbol,
    required this.direction,
    required this.entry,
    required this.stopLoss,
    required this.takeProfit,
  });
}
