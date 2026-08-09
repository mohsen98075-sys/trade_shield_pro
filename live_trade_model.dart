class LiveTradeModel {
  final String symbol;
  final String side;
  final double profitLoss;

  const LiveTradeModel({
    required this.symbol,
    required this.side,
    required this.profitLoss,
  });
}
