import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:al_quran/cubits/surah/surah_cubit.dart';
import 'package:al_quran/cubits/surah_detail/surah_detail_cubit.dart';
import 'package:al_quran/cubits/translate/translate_cubit.dart';
import 'package:al_quran/cubits/verse/verse_cubit.dart';
import 'package:al_quran/themes/default_themes.dart';
import 'package:al_quran/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;
  const MyApp({super.key, this.savedThemeMode});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SurahCubit(),
        ),
        BlocProvider(
          create: (context) => SurahDetailCubit(),
        ),
        BlocProvider(
          create: (context) => VerseCubit(),
        ),
        BlocProvider(
          create: (context) => TranslateCubit(),
        ),
      ],
      child: AdaptiveTheme(
        light: DefaultThemes().light,
        dark: DefaultThemes().dark,
        initial: savedThemeMode ?? AdaptiveThemeMode.system,
        builder: (lightTheme, darkTheme) => MaterialApp.router(
          title: 'Al-Quran',
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          routerConfig: defaultRouter,
        ),
      ),
    );
  }
}
