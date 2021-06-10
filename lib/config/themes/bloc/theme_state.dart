import 'package:botsta_app/constants/app_constants.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../theme_config.dart';
    
class ThemeState extends Equatable {
  ThemeData? themeData;
  final AppTheme appTheme;

  ThemeState({required this.appTheme}) {
    themeData = themeConfigs[appTheme];
  }


  @override
  List<Object?> get props => [themeData, appTheme];
}

class ThemeInitial extends ThemeState {
  ThemeInitial() : super(appTheme: AppConstants.DEFAULT_THEME);
}