import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum AppTheme { Dark, Light }

const _primaryColor = Color.fromRGBO(40, 53, 88, 1);
const _accentColor = Color.fromRGBO(85, 123, 244, 1);
const _highlightColor = Color.fromRGBO(234, 239, 253, 1);
const _errorColor = Color.fromRGBO(255, 182, 192, 1);

final themeConfigs = {
  AppTheme.Light: ThemeData(
    brightness: Brightness.light,
    primaryColor: _primaryColor,
    accentColor: _accentColor,
    highlightColor: _highlightColor,
    errorColor: _errorColor,
    iconTheme: IconThemeData(
      color: _primaryColor,
      size: 27,
    ),
    dividerTheme: DividerThemeData(color: _highlightColor, thickness: 3),
    textTheme: GoogleFonts.montserratTextTheme(
      TextTheme(
        headline1: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
          color: _primaryColor,
        ),
        headline2: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: _primaryColor,
        ),
        headline3: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 19,
          color: _primaryColor,
        ),
        headline4: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 19,
          color: _primaryColor,
        ),
        headline5: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 19,
          color: Colors.white,
        ),
        subtitle2: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 19,
          color: Colors.white,
        ),
        bodyText2: TextStyle(
            color: _primaryColor, fontWeight: FontWeight.w300, fontSize: 16),
      ),
    ),
  ),
  AppTheme.Dark: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.green[700],
      textTheme: GoogleFonts.montserratTextTheme()),
};
