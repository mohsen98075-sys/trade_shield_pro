import 'package:flutter/material.dart';
import '../widgets/signal_card.dart';
import '../models/signal_model.dart';

class SignalsScreen extends StatelessWidget {
  const SignalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signals = const [
      SignalModel(symbol: 'BTCUSDT', direction: 'BUY', entry: 60000, stopLoss: 59000, takeProfit: 62000),
      SignalModel(symbol: 'XAUUSD', direction: 'SELL', entry: 3350, stopLoss: 3370, takeProfit: 3310),
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: signals.length,
      itemBuilder: (_, i) => SignalCard(signal: signals[i]),
    );
  }
}
