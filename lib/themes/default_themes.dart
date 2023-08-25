import 'package:al_quran/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultThemes {
  ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: bgColorLight1,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: bgColorLight2,
    ),
    fontFamily: GoogleFonts.ibmPlexSansArabic().fontFamily,
    textTheme: TextTheme(
      titleSmall: GoogleFonts.ibmPlexSansArabic(
        color: greyColor,
      ),
      labelMedium: GoogleFonts.ibmPlexSansArabic(
        color: greyColor,
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: primaryColor,
      selectionHandleColor: primaryColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: whiteColor,
      iconTheme: IconThemeData(
        color: whiteColor,
      ),
      actionsIconTheme: IconThemeData(
        color: whiteColor,
      ),
      titleTextStyle: TextStyle(
        fontSize: bodyFS,
        fontWeight: semiBold,
      ),
    ),
  );

  ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: bgColorDark4,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: bgColorDark5,
    ),
    fontFamily: GoogleFonts.ibmPlexSansArabic().fontFamily,
    textTheme: TextTheme(
      titleSmall: GoogleFonts.ibmPlexSansArabic(
        color: mutedColor,
      ),
      labelMedium: GoogleFonts.ibmPlexSansArabic(
        color: mutedColor,
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: primaryColor,
      selectionHandleColor: primaryColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: whiteColor,
      iconTheme: IconThemeData(
        color: whiteColor,
      ),
      actionsIconTheme: IconThemeData(
        color: whiteColor,
      ),
      titleTextStyle: GoogleFonts.ibmPlexSansArabic(
        fontSize: bodyFS,
        fontWeight: semiBold,
      ),
    ),
  );
}
