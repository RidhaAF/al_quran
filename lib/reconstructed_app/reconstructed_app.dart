import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/core.dart';
import 'injection.dart';
import 'presentation/presentation.dart';

class ReconstructedApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;
  ReconstructedApp({super.key, this.savedThemeMode});

  final SurahCubit surahCubit = di<SurahCubit>();
  final TranslateCubit translateCubit = di<TranslateCubit>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => surahCubit),
        BlocProvider(create: (context) => translateCubit)
      ],
      child: AdaptiveTheme(
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
      ),
    );
  }
}
