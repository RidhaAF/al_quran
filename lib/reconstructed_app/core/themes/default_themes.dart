import 'package:al_quran/reconstructed_app/core/themes/default_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class DefaultThemes with WidgetsBindingObserver {
  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: DefaultStyle.bgColorDark4,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: DefaultStyle.bgColorDark5,
      ),
      fontFamily: GoogleFonts.ibmPlexSansArabic().fontFamily,
      textTheme: TextTheme(
        titleSmall: GoogleFonts.ibmPlexSansArabic(
          color: DefaultStyle.mutedColor,
        ),
        labelMedium: GoogleFonts.ibmPlexSansArabic(
          color: DefaultStyle.mutedColor,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: DefaultStyle.primaryColor,
        selectionHandleColor: DefaultStyle.primaryColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: DefaultStyle.primaryColor,
        foregroundColor: DefaultStyle.whiteColor,
        iconTheme: IconThemeData(
          color: DefaultStyle.whiteColor,
        ),
        actionsIconTheme: IconThemeData(
          color: DefaultStyle.whiteColor,
        ),
        titleTextStyle: GoogleFonts.ibmPlexSansArabic(
          fontSize: DefaultStyle.bodyFS,
          fontWeight: DefaultStyle.semiBold,
        ),
      ),
      searchBarTheme: SearchBarThemeData(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          DefaultStyle.primaryColor.withOpacity(0.1),
        ),
        shape: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.focused)) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(DefaultStyle.defaultRadius),
              ),
              side: BorderSide(color: DefaultStyle.primaryColor),
            );
          }
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(DefaultStyle.defaultRadius),
            ),
            side: BorderSide.none,
          );
        }),
        hintStyle: MaterialStateProperty.all(
          GoogleFonts.ibmPlexSansArabic(
            color: DefaultStyle.mutedColor,
            fontSize: DefaultStyle.calloutFS,
          ),
        ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.ibmPlexSansArabic(
            fontSize: DefaultStyle.calloutFS,
          ),
        ),
      ),
    );
  }

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: DefaultStyle.bgColorLight1,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: DefaultStyle.bgColorLight2,
      ),
      fontFamily: GoogleFonts.ibmPlexSansArabic().fontFamily,
      textTheme: TextTheme(
        titleSmall: GoogleFonts.ibmPlexSansArabic(
          color: DefaultStyle.greyColor,
        ),
        labelMedium: GoogleFonts.ibmPlexSansArabic(
          color: DefaultStyle.greyColor,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: DefaultStyle.primaryColor,
        selectionHandleColor: DefaultStyle.primaryColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: DefaultStyle.primaryColor,
        foregroundColor: DefaultStyle.whiteColor,
        iconTheme: IconThemeData(
          color: DefaultStyle.whiteColor,
        ),
        actionsIconTheme: IconThemeData(
          color: DefaultStyle.whiteColor,
        ),
        titleTextStyle: TextStyle(
          fontSize: DefaultStyle.bodyFS,
          fontWeight: DefaultStyle.semiBold,
        ),
      ),
      searchBarTheme: SearchBarThemeData(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          DefaultStyle.primaryColor.withOpacity(0.1),
        ),
        shape: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.focused)) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(DefaultStyle.defaultRadius),
              ),
              side: BorderSide(color: DefaultStyle.primaryColor),
            );
          }
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(DefaultStyle.defaultRadius),
            ),
            side: BorderSide.none,
          );
        }),
        hintStyle: MaterialStateProperty.all(
          GoogleFonts.ibmPlexSansArabic(
            color: DefaultStyle.greyColor,
            fontSize: DefaultStyle.calloutFS,
          ),
        ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.ibmPlexSansArabic(
            fontSize: DefaultStyle.calloutFS,
          ),
        ),
      ),
    );
  }
}
