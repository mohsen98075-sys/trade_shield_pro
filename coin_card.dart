import 'package:flutter/material.dart';

class CoinCard extends StatelessWidget {
  final String symbol;
  final String price;

  const CoinCard({super.key, required this.symbol, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.currency_bitcoin),
        title: Text(symbol),
        trailing: Text(price),
      ),
    );
  }
}
