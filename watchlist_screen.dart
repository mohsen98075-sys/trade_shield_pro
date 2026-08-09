import 'package:flutter/material.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const coins = ['BTCUSDT', 'ETHUSDT', 'XAUUSD', 'SOLUSDT'];
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        for (final coin in coins)
          Card(
            child: ListTile(
              leading: const Icon(Icons.show_chart),
              title: Text(coin),
              trailing: const Icon(Icons.star_border),
            ),
          ),
      ],
    );
  }
}
