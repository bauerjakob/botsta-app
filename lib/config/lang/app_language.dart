import 'package:botsta_app/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_localizations.dart';

class AppLanguage extends ChangeNotifier {
  Locale _appLocale;

  Locale get appLocal => _appLocale ?? Locale(AppConstants.LANGCODE_DEFAULT);

  Future<Locale> fetchLocale() async {
    var prefs = await SharedPreferences.getInstance();
    if (prefs.getString('language_code') == null) {
      _appLocale = Locale(AppConstants.LANGCODE_DEFAULT);
    } else {
      _appLocale = Locale(prefs.getString('language_code'));
    }
    return _appLocale;
  }


  void changeLanguage(Locale type) async {
    var prefs = await SharedPreferences.getInstance();
    if (_appLocale == type) {
      return;
    }
    var locale = AppLocalizations.supportedLocales
      .firstWhere((l) => type == l, orElse: null);

    if (locale != null) {
      _appLocale = locale;
      await prefs.setString('languate_code', locale.languageCode);
      notifyListeners();
    }
  }
}