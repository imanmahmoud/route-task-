import 'package:flutter/material.dart';
class ThemeManager {
  static Color primaryColor = const Color(0xFF004182);
  static Color blueGreyColor = const Color(0xFF607D8B);

  static ThemeData mainTheme = ThemeData(
    primaryColor: primaryColor,
    textTheme: TextTheme(
      titleMedium: TextStyle(
          color: primaryColor, fontSize: 14, fontWeight: FontWeight.w500),
      titleSmall: TextStyle(
          color: primaryColor, fontSize: 10, fontWeight: FontWeight.w400),
    ),
  );
}
