import 'package:flutter/material.dart';
import 'package:my_flow/feat/setting/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Dark Mode Toggle
          SwitchListTile(
            title: Text(
              'Dark Mode',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            value: themeProvider.themeMode == ThemeMode.dark,
            onChanged: themeProvider.toggleTheme,
          ),

          // About Section
          ListTile(
            title: Text(
              'About',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            trailing: const Icon(Icons.info),
            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: 'My Flow',
                applicationVersion: '1.0.0',
                applicationLegalese: '© 2025 My Flow. All rights reserved.',
              );
            },
          ),
        ],
      ),
    );
  }
}
