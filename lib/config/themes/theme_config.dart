import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum AppTheme { Dark, Light }

const _primaryColorLight = Color.fromRGBO(40, 53, 88, 1);
const _accentColorLight = Color.fromRGBO(85, 123, 244, 1);
const _highlightColorLight = Color.fromRGBO(234, 239, 253, 1);
const _errorColorLight = Color.fromRGBO(255, 182, 192, 1);

const _primaryColorDark = Colors.white; //Color.fromRGBO(40, 53, 88, 1);
const _accentColorDark = Color.fromRGBO(85, 123, 244, 1);
const _highlightColorDark = Color.fromRGBO(34, 34, 34, 1);
const _errorColorDark = Color.fromRGBO(255, 182, 192, 1);

final themeConfigs = {
  AppTheme.Light: ThemeData(
    brightness: Brightness.light,
    primaryColor: _primaryColorLight,
    accentColor: _accentColorLight,
    highlightColor: _highlightColorLight,
    errorColor: _errorColorLight,
    iconTheme: IconThemeData(
      color: _primaryColorLight,
      size: 27,
    ),
    dividerTheme: DividerThemeData(color: _highlightColorLight, thickness: 3),
    textTheme: GoogleFonts.montserratTextTheme(
      TextTheme(
        headline1: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
          color: _primaryColorLight,
        ),
        headline2: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: _primaryColorLight,
        ),
        headline3: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 19,
          color: _primaryColorLight,
        ),
        headline4: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 19,
          color: _primaryColorLight,
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
            color: _primaryColorLight, fontWeight: FontWeight.w300, fontSize: 16),
      ),
    ),
  ),
  AppTheme.Dark: ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    backgroundColor: Colors.black,
    primaryColor: _primaryColorDark,
    accentColor: _accentColorDark,
    highlightColor: _highlightColorDark,
    errorColor: _errorColorDark,
    iconTheme: IconThemeData(
      color: _primaryColorDark,
      size: 27,
    ),
    dividerTheme: DividerThemeData(color: _highlightColorDark, thickness: 3),
    textTheme: GoogleFonts.montserratTextTheme(
      TextTheme(
        headline1: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
          color: _primaryColorDark,
        ),
        headline2: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: _primaryColorDark,
        ),
        headline3: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 19,
          color: _primaryColorDark,
        ),
        headline4: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 19,
          color: _primaryColorDark,
        ),
        headline5: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 19,
          color: Colors.black,
        ),
        subtitle2: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 19,
          color: Colors.white,
        ),
        bodyText2: TextStyle(
            color: _primaryColorDark, fontWeight: FontWeight.w300, fontSize: 16),
      ),
    ),
  ),
};
