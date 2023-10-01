import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'core/core.dart';

class ReconstructedApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;
  const ReconstructedApp({super.key, this.savedThemeMode});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: DefaultThemes.light,
      dark: DefaultThemes.dark,
      initial: savedThemeMode ?? AdaptiveThemeMode.system,
      builder: (lightTheme, darkTheme) => MaterialApp.router(
        title: 'Al-Quran',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        routerConfig: Routes.defaultRouter,
      ),
    );
  }
}
