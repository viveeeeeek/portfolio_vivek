import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color brandColour = const Color(0xFF0BDA74);
Color blackColour = const Color(0xff050505);
Color whiteColour = const Color(0xFFFFFFFF);

//! Desktop Sections Title TextStyles
TextStyle desktopSectionTitleFontStyle = GoogleFonts.firaSans(
  textStyle: TextStyle(fontSize: 16, color: brandColour, letterSpacing: 2),
);
//! Mobile Sections Title TextStyles
TextStyle mobileSectionTitleFontStyle = GoogleFonts.firaSans(
  textStyle: TextStyle(fontSize: 10, color: brandColour, letterSpacing: 2),
);

//! Contact card TextStyles
TextStyle contactHighlightFontStyle = GoogleFonts.firaSans(
    textStyle: TextStyle(
        color: brandColour,
        fontSize: 24,
        letterSpacing: 2,
        fontStyle: FontStyle.italic));
TextStyle contactMainFontStyle = GoogleFonts.firaSans(
    textStyle: TextStyle(
        color: whiteColour,
        fontSize: 24,
        letterSpacing: 1,
        fontWeight: FontWeight.w500));
//! Header TextStyles - Desktop
TextStyle headerMainFontStyle = GoogleFonts.firaSans(
    textStyle: TextStyle(
        color: whiteColour,
        fontSize: 48,
        letterSpacing: 1,
        fontWeight: FontWeight.w500));
TextStyle headerHighlightFontStyle = GoogleFonts.firaSans(
    textStyle: TextStyle(
        color: brandColour,
        fontSize: 48,
        letterSpacing: 1,
        fontStyle: FontStyle.italic));
//! Header TextStyles - Mobile
TextStyle mobileHeaderHighlightFontStyle = GoogleFonts.firaSans(
    textStyle: TextStyle(
  color: brandColour,
  fontSize: 28,
  letterSpacing: 1,
  fontStyle: FontStyle.italic,
));
TextStyle mobileHeaderMainFontStyle = GoogleFonts.firaSans(
    textStyle: TextStyle(
        color: whiteColour,
        fontSize: 28,
        letterSpacing: 1,
        fontWeight: FontWeight.w500));

//! About TextStyles - Desktop
TextStyle aboutMainFontStyle = GoogleFonts.firaSans(
    textStyle: TextStyle(
        color: whiteColour,
        fontSize: 28,
        letterSpacing: 1,
        fontWeight: FontWeight.w500));
TextStyle aboutHighlightFontStyle = GoogleFonts.firaSans(
    textStyle: TextStyle(
        color: brandColour,
        fontSize: 28,
        letterSpacing: 2,
        fontStyle: FontStyle.italic));
TextStyle aboutNoHighlightFotStyle = GoogleFonts.firaSans(
    textStyle: const TextStyle(
        color: Color(0xff909190),
        fontSize: 28,
        letterSpacing: 2,
        fontStyle: FontStyle.italic));
//! About TextStyles - Mobile
TextStyle mobileAboutMainFontStyle = GoogleFonts.firaSans(
    textStyle: TextStyle(
        color: whiteColour,
        fontSize: 20,
        letterSpacing: 1,
        fontWeight: FontWeight.w500));
TextStyle mobileAboutHighlightFontStyle = GoogleFonts.firaCode(
    textStyle: TextStyle(
        color: brandColour,
        fontSize: 20,
        letterSpacing: 2,
        fontStyle: FontStyle.italic));
TextStyle mobileAboutNoHighlightFotStyle = GoogleFonts.firaSans(
    textStyle: const TextStyle(
        color: Color(0xff909190),
        fontSize: 20,
        letterSpacing: 2,
        fontStyle: FontStyle.italic));

LinearGradient buttonLinearGradient = LinearGradient(
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
  colors: [
    brandColour,
    const Color(0xFF38EBAF),
  ],
  stops: const [0.0, 1.0],
  tileMode: TileMode.clamp,
);

//! Contact button hover TextStyle
TextStyle hoveredTextStyleContactButton =
    TextStyle(color: blackColour, fontWeight: FontWeight.w600, wordSpacing: 1);

TextStyle normalTextStyleContactButton =
    TextStyle(color: whiteColour, wordSpacing: 1);

//! Desker AnimatedTextKit TextStyle
TextStyle desktopAnimatedTextKitTextStyle = GoogleFonts.firaSans(
    textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 48,
        letterSpacing: 1,
        fontWeight: FontWeight.w500));
TextStyle mobileAnimatedTextKitTextStyle = GoogleFonts.firaSans(
    textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 28,
        letterSpacing: 1,
        fontWeight: FontWeight.w500));

////! Custom spacings
Widget sizedBox250 = const SizedBox(height: 250);
Widget sizedBox200 = const SizedBox(height: 200);
Widget sizedBox150 = const SizedBox(height: 150);
Widget sizedBox100 = const SizedBox(height: 100);
Widget sizedBox75 = const SizedBox(height: 75);
Widget sizedBox50 = const SizedBox(height: 50);
Widget sizedBox25 = const SizedBox(height: 25);
Widget sizedBox35 = const SizedBox(height: 35);
