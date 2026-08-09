class OrderModel {
  final String symbol;
  final String side;
  final double entry;
  final double stopLoss;
  final double takeProfit;
  final double quantity;

  const OrderModel({
    required this.symbol,
    required this.side,
    required this.entry,
    required this.stopLoss,
    required this.takeProfit,
    required this.quantity,
  });
}
