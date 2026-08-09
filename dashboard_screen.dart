import 'package:flutter/material.dart';
import 'trade_screen.dart';
import 'signals_screen.dart';
import 'watchlist_screen.dart';
import 'settings_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int index = 0;

  final pages = const [
    _DashboardHome(),
    TradeScreen(),
    SignalsScreen(),
    WatchlistScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trade Shield Pro')),
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (value) => setState(() => index = value),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.dashboard), label: 'داشبورد'),
          NavigationDestination(icon: Icon(Icons.swap_horiz), label: 'معامله'),
          NavigationDestination(icon: Icon(Icons.notifications), label: 'سیگنال'),
          NavigationDestination(icon: Icon(Icons.star), label: 'واچ‌لیست'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'تنظیمات'),
        ],
      ),
    );
  }
}

class _DashboardHome extends StatelessWidget {
  const _DashboardHome();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        _InfoCard(title: 'موجودی', value: '\$50.00', icon: Icons.account_balance_wallet),
        _InfoCard(title: 'ریسک هر معامله', value: '\$1.50', icon: Icons.security),
        _InfoCard(title: 'اهرم محاسباتی', value: '20x', icon: Icons.speed),
        _InfoCard(title: 'وضعیت ربات', value: 'آماده', icon: Icons.smart_toy),
      ],
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const _InfoCard({required this.title, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon, size: 34),
        title: Text(title),
        trailing: Text(value, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
