import 'package:eunice_ui/ui.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:my_flow/feat/home/screen/home_screen.dart';
import 'package:my_flow/feat/setting/provider/theme_provider.dart';
import 'package:my_flow/l10n/l10n.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  StatelessElement createElement() {
    GetIt.I.get<FirebaseAnalytics>().logAppOpen();
    return StatelessElement(this);
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      themeMode: themeProvider.themeMode,
      theme: AppTheme.standard,
      darkTheme: AppTheme.dark,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      onGenerateTitle: (context) => context.l10n.appTitle,
      supportedLocales: AppLocalizations.supportedLocales,
      navigatorObservers: [
        GetIt.I.get<FirebaseAnalyticsObserver>(),
      ],
      home: const HomeScreen(),
    );
  }
}
