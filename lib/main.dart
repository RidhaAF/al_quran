import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:al_quran/cubits/surah/surah_cubit.dart';
import 'package:al_quran/pages/home/home_page.dart';
import 'package:al_quran/themes/default_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(MyApp(savedThemeMode: savedThemeMode));
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ],
);

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
          routerConfig: _router,
        ),
      ),
    );
  }
}
