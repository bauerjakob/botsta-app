import 'package:flutter/material.dart';

enum AppTheme {
  Dark,
  Light
}

final themeConfigs = {
  AppTheme.Light: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
  ),
  AppTheme.Dark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green[700],
  ),
};