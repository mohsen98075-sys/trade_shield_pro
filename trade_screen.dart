import 'package:flutter/material.dart';
import '../services/risk_control_service.dart';

class TradeScreen extends StatefulWidget {
  const TradeScreen({super.key});

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  final entry = TextEditingController();
  final stop = TextEditingController();
  double size = 0;

  void calculate() {
    final e = double.tryParse(entry.text) ?? 0;
    final s = double.tryParse(stop.text) ?? 0;
    setState(() {
      size = RiskControlService().positionSize(entry: e, stopLoss: s);
    });
  }

  @override
  void dispose() {
    entry.dispose();
    stop.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text('محاسبه حجم معامله', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        TextField(
          controller: entry,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'قیمت ورود', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: stop,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'حد ضرر', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 16),
        FilledButton(onPressed: calculate, child: const Text('محاسبه')),
        const SizedBox(height: 20),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text('حجم محاسبه‌شده: ${size.toStringAsFixed(6)}'),
          ),
        ),
        const SizedBox(height: 12),
        const Text('حداکثر زیان محاسباتی این نسخه: \$1.50'),
      ],
    );
  }
}
