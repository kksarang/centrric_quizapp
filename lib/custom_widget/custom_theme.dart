import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  static TextStyle title(BuildContext context) {
    return Theme.of(context).textTheme.headline5!.copyWith(fontSize: 20, color: Colors.grey[700]);
  }
}

TextStyle headline1 =
    GoogleFonts.roboto(fontWeight: FontWeight.w300, fontSize: 86, letterSpacing: -1.5, color: Colors.white);

TextStyle subtitle2 = GoogleFonts.roboto(
  fontWeight: FontWeight.bold,
  fontSize: 35,
  letterSpacing: 0.1,
  color: Colors.white,
);
TextStyle subtitle3 = GoogleFonts.roboto(
  fontWeight: FontWeight.w500,
  fontSize: 13,
  letterSpacing: 0.1,
);
TextStyle title = GoogleFonts.roboto(
  fontWeight: FontWeight.w600,
  fontSize: 20,
  letterSpacing: 0.15,
);

TextStyle headline9 =
    GoogleFonts.roboto(fontWeight: FontWeight.w500, fontSize: 22, letterSpacing: 0.15, color: Colors.white);
TextStyle subtitleLite =
    GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 12, letterSpacing: 0.45, color: Colors.white);

TextStyle body3 =
    GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 70, letterSpacing: 0.25, color: Colors.white);
