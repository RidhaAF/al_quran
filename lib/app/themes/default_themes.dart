import 'package:al_quran/app/utilities/constants.dart';
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
    searchBarTheme: SearchBarThemeData(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all(
        primaryColor.withOpacity(0.1),
      ),
      shape: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.focused)) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(defaultRadius),
            ),
            side: BorderSide(color: primaryColor),
          );
        }
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(defaultRadius),
          ),
          side: BorderSide.none,
        );
      }),
      hintStyle: MaterialStateProperty.all(
        GoogleFonts.ibmPlexSansArabic(
          color: greyColor,
          fontSize: calloutFS,
        ),
      ),
      textStyle: MaterialStateProperty.all(
        GoogleFonts.ibmPlexSansArabic(
          fontSize: calloutFS,
        ),
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
    searchBarTheme: SearchBarThemeData(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all(
        primaryColor.withOpacity(0.1),
      ),
      shape: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.focused)) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(defaultRadius),
            ),
            side: BorderSide(color: primaryColor),
          );
        }
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(defaultRadius),
          ),
          side: BorderSide.none,
        );
      }),
      hintStyle: MaterialStateProperty.all(
        GoogleFonts.ibmPlexSansArabic(
          color: mutedColor,
          fontSize: calloutFS,
        ),
      ),
      textStyle: MaterialStateProperty.all(
        GoogleFonts.ibmPlexSansArabic(
          fontSize: calloutFS,
        ),
      ),
    ),
  );
}
