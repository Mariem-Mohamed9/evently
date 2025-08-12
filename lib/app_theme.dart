import 'package:flutter/material.dart';
class AppTheme{
  static const Color primary = Color(0xFF5669FF);
  static const Color backgroundLight = Color(0xFFF2FEFF);
  static const Color backgroundDark = Color(0xFF101127);
  static const Color black = Color(0xFF1C1C1C);
  static const Color white = Color(0xFFFFFFFF);
  static const Color gray = Color(0xFF7B7B7B);
  static const Color red = Color(0xFFFF5659);
  static ThemeData lightTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primary,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: white,
      unselectedItemColor: white,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: white,
      shape: CircleBorder(side: BorderSide(width:5 , color: white)),
    )
  );


  static ThemeData darkTheme = ThemeData();
}