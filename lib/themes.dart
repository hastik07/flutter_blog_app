import 'package:flutter/material.dart';

class ThemeClass {
  Color lightPrimaryColor = Colors.yellow;
  Color darkPrimaryColor = Colors.redAccent;
  Color secondaryColor = Colors.blueGrey;
  Color accentColor = Colors.orangeAccent;

  static ThemeData lightTheme = ThemeData(
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: _themeClass.lightPrimaryColor,
      secondary: _themeClass.lightPrimaryColor,
    ),
  );
  static ThemeData darkTheme = ThemeData(
      primaryColor: ThemeData.light().scaffoldBackgroundColor,
      primaryTextTheme: ThemeData().textTheme,
      colorScheme: const ColorScheme.light().copyWith(
        primary: _themeClass.lightPrimaryColor,
        secondary: _themeClass.lightPrimaryColor,
      ),
  );
}

ThemeClass _themeClass = ThemeClass();