import 'package:al_quran/models/surah_model.dart';
import 'package:al_quran/pages/home/home_page.dart';
import 'package:al_quran/pages/surah/surah_page.dart';
import 'package:go_router/go_router.dart';

final defaultRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: 'surah',
      path: '/surah/:surahNumber',
      builder: (context, state) {
        final surahNumber = state.pathParameters['surahNumber'];
        final Surah? surah = state.extra as Surah?;
        return SurahPage(
          surahNumber: surahNumber,
          surah: surah,
        );
      },
    ),
  ],
);
