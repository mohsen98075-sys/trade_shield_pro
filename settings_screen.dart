import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notifications = true;
  bool autoTrading = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
          title: const Text('اعلان‌ها'),
          value: notifications,
          onChanged: (v) => setState(() => notifications = v),
        ),
        SwitchListTile(
          title: const Text('معامله خودکار'),
          subtitle: const Text('در این نسخه فقط رابط کاربری است'),
          value: autoTrading,
          onChanged: (v) => setState(() => autoTrading = v),
        ),
        const ListTile(
          leading: Icon(Icons.info_outline),
          title: Text('Trade Shield Pro'),
          subtitle: Text('Version 1.0.0'),
        ),
      ],
    );
  }
}
