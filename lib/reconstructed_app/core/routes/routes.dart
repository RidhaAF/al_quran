import 'package:go_router/go_router.dart';

abstract class Routes {
  static GoRouter get defaultRouter {
    return GoRouter(
      initialLocation: '/',
      routes: [
        /*
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
        GoRoute(
          name: 'verse',
          path: '/surah/:surahNumber/:verseNumber',
          builder: (context, state) {
            final Surah? surah =
                (state.extra as Map<String, Object?>)['surah'] as Surah?;
            final Verse? verse =
                (state.extra as Map<String, Object?>)['verse'] as Verse?;
            final surahNumber = state.pathParameters['surahNumber'];
            final verseNumber = state.pathParameters['verseNumber'];

            return VersePage(
              surah: surah,
              verse: verse,
              surahNumber: surahNumber,
              verseNumber: verseNumber,
            );
          },
        ),
        */
      ],
    );
  }
}
