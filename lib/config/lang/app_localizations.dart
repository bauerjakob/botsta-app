import 'dart:convert';

import 'package:botsta_app/constants/app_constants.dart';
import 'package:botsta_app/constants/asset_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app_localization_delegate.dart';

class AppLocalizations {
  final Locale locale;

  static const List<Locale> supportedLocales = [
    Locale(AppConstants.LANGCODE_EN),
    Locale(AppConstants.LANGCODE_DE)
  ];

  static const List<LocalizationsDelegate> localizationsDelegates = [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
  ];

  static const LocalizationsDelegate<AppLocalizations> delegate = AppLocalizationsDelegate();

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  late dynamic _localizedStrings;

  Future<bool> load() async {
    var jsonString = await rootBundle.loadString('${AssetPaths.LANG_BASEPATH}${locale.languageCode}.json');
    _localizedStrings = json.decode(jsonString);
    return true;
  }

  String? translate(String key) {
    if (_localizedStrings == null) {
      return null;
    }
    
    var paths = key.split('.');

    var selected = _localizedStrings[paths.first];

    for (var i = 1; i < paths.length; i++) {
      if (selected == null) {
        return null;
      }

      selected = selected[paths[i]];
    }

    return selected.toString();
  }
}
