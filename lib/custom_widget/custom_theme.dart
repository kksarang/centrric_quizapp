import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  static TextStyle title(BuildContext context) {
    return Theme.of(context).textTheme.headline5!.copyWith(fontSize: 20, color: Colors.grey[700]);
  }
}

TextStyle headline1 =
    GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 86, letterSpacing: -1.5, color: Colors.white);
TextStyle headline2 = GoogleFonts.roboto(
  fontWeight: FontWeight.w300,
  fontSize: 60,
  letterSpacing: -0.5,
);
TextStyle headline3 = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 48,
  letterSpacing: 0,
);
TextStyle headline4 = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 34,
  letterSpacing: 0.25,
);
TextStyle headline5 = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 24,
  letterSpacing: 0,
);
TextStyle title = GoogleFonts.roboto(
  fontWeight: FontWeight.w600,
  fontSize: 20,
  letterSpacing: 0.15,
);

TextStyle headline6 = GoogleFonts.roboto(
  fontWeight: FontWeight.w500,
  fontSize: 20,
  letterSpacing: 0.15,
);
TextStyle headline9 = GoogleFonts.roboto(
  fontWeight: FontWeight.w500,
  fontSize: 22,
  letterSpacing: 0.15,
);
TextStyle subtitle1 = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 16,
  letterSpacing: 0.15,
);
TextStyle subtitle12 = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 14,
  letterSpacing: 0.15,
);
TextStyle subtitleLite =
    GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 16, letterSpacing: 0.45, color: Colors.white);
TextStyle subtitle2 = GoogleFonts.roboto(
  fontWeight: FontWeight.bold,
  fontSize: 25,
  letterSpacing: 0.1,
);
TextStyle subtitle3 = GoogleFonts.roboto(
  fontWeight: FontWeight.w500,
  fontSize: 13,
  letterSpacing: 0.1,
);
TextStyle body1 = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 16,
  letterSpacing: 0.5,
);
TextStyle body2 = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 14,
  letterSpacing: 0.25,
);
TextStyle body3 = GoogleFonts.roboto(
  fontWeight: FontWeight.w600,
  fontSize: 16,
  letterSpacing: 0.25,
);
TextStyle caption = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 12,
  letterSpacing: 0.4,
);
TextStyle captionLite = GoogleFonts.roboto(
  fontWeight: FontWeight.w300,
  fontSize: 13,
  letterSpacing: 0.4,
);
TextStyle captionSmall = GoogleFonts.roboto(
  fontWeight: FontWeight.w400,
  fontSize: 10,
  letterSpacing: 0.4,
);
TextStyle dropDownText =
    GoogleFonts.sourceSansPro(fontSize: 14, fontWeight: FontWeight.w500, color: const Color(0xff20282A), height: 1.5);
