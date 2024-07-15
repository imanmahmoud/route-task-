import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static Color primaryColor = Color(0xFF004182);
  static Color blueGreyColor = Color(0xFF607D8B);

  static ThemeData mainTheme = ThemeData(
    textTheme: TextTheme(
      titleMedium: GoogleFonts.poppins(
          color: primaryColor, fontSize: 14, fontWeight: FontWeight.w500),
      titleSmall: GoogleFonts.poppins(
          color: primaryColor, fontSize: 10, fontWeight: FontWeight.w400),
    ),
  );
}
