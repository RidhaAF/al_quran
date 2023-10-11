import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class DefaultStyle {
  static double get defaultMargin => 16;
  static double get defaultRadius => 8;

  static Color get primaryColor => Colors.deepPurple.shade400;
  static Color get secondaryColor => Colors.grey.shade300;
  static Color get beigeColor => const Color(0xFFF5F5DC);
  static Color get mutedColor => Colors.grey;
  static Color get greyColor => Colors.grey.shade700;
  static Color get darkColor => const Color(0xFF090A0A);
  static Color get darkGreyColor => const Color(0xFF1D1D1D);
  static Color get blackColor => Colors.black;
  static Color get whiteColor => Colors.white;
  static Color get white70Color => Colors.white70;
  static Color get yellowColor => Colors.yellow.shade700;
  static Color get lightPurpleColor => Colors.purple.shade100;
  static Color get bgColorDark1 => const Color(0xFF1A1A1A);
  static Color get bgColorDark2 => Colors.black;
  static Color get bgColorDark3 => const Color(0xFF1D1D1D);
  static Color get bgColorDark4 => const Color(0xFF150C25);
  static Color get bgColorDark5 => const Color(0xFF0A0612);
  static Color get bgColorDark6 => const Color(0xFF291749);
  static Color get bgColorLight1 => const Color(0xFFF5F5F5);
  static Color get bgColorLight2 => Colors.white;
  static Color get bgColorLight3 => const Color(0xFFE9E9E9);

  static double get largeTitleFS => 32;
  static double get title1FS => 28;
  static double get title2FS => 24;
  static double get title3FS => 20;
  static double get headlineFS => 18;
  static double get bodyFS => 18;
  static double get calloutFS => 16;
  static double get subheadlineFS => 14;
  static double get footnoteFS => 13;
  static double get caption1FS => 12;
  static double get caption2FS => 10;

  static FontWeight get thin => FontWeight.w100;
  static FontWeight get extraLight => FontWeight.w200;
  static FontWeight get light => FontWeight.w300;
  static FontWeight get regular => FontWeight.w400;
  static FontWeight get medium => FontWeight.w500;
  static FontWeight get semiBold => FontWeight.w600;
  static FontWeight get bold => FontWeight.w700;
  static FontWeight get extraBold => FontWeight.w800;
  static FontWeight get black => FontWeight.w900;

  // 32
  static TextStyle get largeTitle => GoogleFonts.ibmPlexSansArabic(
        fontSize: largeTitleFS,
      );

// 28
  static TextStyle get title1 => GoogleFonts.ibmPlexSansArabic(
        fontSize: title1FS,
      );

// 24
  static TextStyle get title2 => GoogleFonts.ibmPlexSansArabic(
        fontSize: title2FS,
      );

// 20
  static TextStyle get title3 => GoogleFonts.ibmPlexSansArabic(
        fontSize: title3FS,
      );

// 18
  static TextStyle get headline => GoogleFonts.ibmPlexSansArabic(
        color: whiteColor,
        fontSize: headlineFS,
        fontWeight: semiBold,
      );

// 18
  static TextStyle get body => GoogleFonts.ibmPlexSansArabic(
        fontSize: bodyFS,
      );

// 16
  static TextStyle get callout => GoogleFonts.ibmPlexSansArabic(
        fontSize: calloutFS,
      );

// 14
  static TextStyle get subheadline => GoogleFonts.ibmPlexSansArabic(
        fontSize: subheadlineFS,
      );

// 13
  static TextStyle get footnote => GoogleFonts.ibmPlexSansArabic(
        fontSize: footnoteFS,
      );

// 12
  static TextStyle get caption1 => GoogleFonts.ibmPlexSansArabic(
        fontSize: caption1FS,
      );

// 10
  static TextStyle get caption2 => GoogleFonts.ibmPlexSansArabic(
        fontSize: caption2FS,
      );

// text style per color
  static TextStyle get primaryTextStyle => GoogleFonts.ibmPlexSansArabic(
        color: primaryColor,
      );

  static TextStyle get secondaryTextStyle => GoogleFonts.ibmPlexSansArabic(
        color: secondaryColor,
      );

  static TextStyle get mutedTextStyle => GoogleFonts.ibmPlexSansArabic(
        color: mutedColor,
      );

  static TextStyle get whiteTextStyle => GoogleFonts.ibmPlexSansArabic(
        color: whiteColor,
      );

  static TextStyle get darkGreyTextStyle => GoogleFonts.ibmPlexSansArabic(
        color: darkGreyColor,
      );

  ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.zero,
    backgroundColor: primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(defaultRadius),
    ),
  );

  static ButtonStyle get darkGreyButtonStyle => ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: darkGreyColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
      );

  static Border get primaryBorder => Border.all(
        width: 1,
        color: primaryColor,
      );

  static BoxShadow get primaryBoxShadow => BoxShadow(
        color: blackColor.withOpacity(0.10),
        spreadRadius: 0,
        blurRadius: 16,
        offset: const Offset(0, 0), // changes position of shadow
      );

  static RoundedRectangleBorder get cardBorderRadius => RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(defaultRadius),
        ),
      );
}
