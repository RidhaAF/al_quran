import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 16;
double defaultRadius = 8;

Color primaryColor = Colors.deepPurple.shade400;
Color secondaryColor = Colors.grey.shade300;
Color beigeColor = const Color(0xFFF5F5DC);
Color mutedColor = Colors.grey;
Color greyColor = Colors.grey.shade700;
Color darkColor = const Color(0xFF090A0A);
Color darkGreyColor = const Color(0xFF1D1D1D);
Color blackColor = Colors.black;
Color whiteColor = Colors.white;
Color white70Color = Colors.white70;
Color yellowColor = Colors.yellow.shade700;
Color lightPurpleColor = Colors.purple.shade100;
Color bgColorDark1 = const Color(0xFF1A1A1A);
Color bgColorDark2 = Colors.black;
Color bgColorDark3 = const Color(0xFF1D1D1D);
Color bgColorDark4 = const Color(0xFF150C25);
Color bgColorDark5 = const Color(0xFF0A0612);
Color bgColorDark6 = const Color(0xFF291749);
Color bgColorLight1 = const Color(0xFFF5F5F5);
Color bgColorLight2 = Colors.white;
Color bgColorLight3 = const Color(0xFFE9E9E9);

double largeTitleFS = 32;
double title1FS = 28;
double title2FS = 22;
double title3FS = 20;
double headlineFS = 18;
double bodyFS = 18;
double calloutFS = 16;
double subheadlineFS = 14;
double footnoteFS = 13;
double caption1FS = 12;
double caption2FS = 10;

FontWeight thin = FontWeight.w100;
FontWeight extraLight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

// 32
TextStyle largeTitle = GoogleFonts.ibmPlexSansArabic(
  fontSize: largeTitleFS,
);

// 28
TextStyle title1 = GoogleFonts.ibmPlexSansArabic(
  fontSize: title1FS,
);

// 22
TextStyle title2 = GoogleFonts.ibmPlexSansArabic(
  fontSize: title2FS,
);

// 20
TextStyle title3 = GoogleFonts.ibmPlexSansArabic(
  fontSize: title3FS,
);

// 18
TextStyle headline = GoogleFonts.ibmPlexSansArabic(
  color: whiteColor,
  fontSize: headlineFS,
  fontWeight: semiBold,
);

// 18
TextStyle body = GoogleFonts.ibmPlexSansArabic(
  fontSize: bodyFS,
);

// 16
TextStyle callout = GoogleFonts.ibmPlexSansArabic(
  fontSize: calloutFS,
);

// 14
TextStyle subheadline = GoogleFonts.ibmPlexSansArabic(
  fontSize: subheadlineFS,
);

// 13
TextStyle footnote = GoogleFonts.ibmPlexSansArabic(
  fontSize: footnoteFS,
);

// 12
TextStyle caption1 = GoogleFonts.ibmPlexSansArabic(
  fontSize: caption1FS,
);

// 10
TextStyle caption2 = GoogleFonts.ibmPlexSansArabic(
  fontSize: caption2FS,
);

// text style per color
TextStyle primaryTextStyle = GoogleFonts.ibmPlexSansArabic(
  color: primaryColor,
);

TextStyle secondaryTextStyle = GoogleFonts.ibmPlexSansArabic(
  color: secondaryColor,
);

TextStyle mutedTextStyle = GoogleFonts.ibmPlexSansArabic(
  color: mutedColor,
);

TextStyle whiteTextStyle = GoogleFonts.ibmPlexSansArabic(
  color: whiteColor,
);

TextStyle darkGreyTextStyle = GoogleFonts.ibmPlexSansArabic(
  color: darkGreyColor,
);

ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
  padding: EdgeInsets.zero,
  backgroundColor: primaryColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(defaultRadius),
  ),
);

ButtonStyle darkGreyButtonStyle = ElevatedButton.styleFrom(
  padding: EdgeInsets.zero,
  backgroundColor: darkGreyColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(defaultRadius),
  ),
);

Border primaryBorder = Border.all(
  width: 1,
  color: primaryColor,
);

BoxShadow primaryBoxShadow = BoxShadow(
  color: blackColor.withOpacity(0.10),
  spreadRadius: 0,
  blurRadius: 16,
  offset: const Offset(0, 0), // changes position of shadow
);

RoundedRectangleBorder cardBorderRadius = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(defaultRadius),
  ),
);
