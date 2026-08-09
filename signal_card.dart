import 'package:flutter/material.dart';
import '../models/signal_model.dart';

class SignalCard extends StatelessWidget {
  final SignalModel signal;
  const SignalCard({super.key, required this.signal});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(signal.symbol, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text('جهت: ${signal.direction}'),
            Text('ورود: ${signal.entry}'),
            Text('حد ضرر: ${signal.stopLoss}'),
            Text('حد سود: ${signal.takeProfit}'),
          ],
        ),
      ),
    );
  }
}
