import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum AppTheme {
  Dark,
  Light
}

const _primaryColor = Color.fromRGBO(40, 53, 88, 1);

final themeConfigs = {
  AppTheme.Light: ThemeData(
    brightness: Brightness.light,
    primaryColor: _primaryColor,
    textTheme: GoogleFonts.montserratTextTheme(
      TextTheme(
        headline1: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
          color: _primaryColor
        ),
        subtitle2: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 19,
          color: _primaryColor
          ),
        bodyText2: TextStyle(
          color: _primaryColor,
          fontWeight: FontWeight.w300,
          fontSize: 16
        )
      )
    )
  ),
  AppTheme.Dark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green[700],
    textTheme: GoogleFonts.montserratTextTheme()
  ),
};