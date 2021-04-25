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

  late Map<String, String> _localizedStrings;

  Future<bool> load() async {
    var jsonString = await rootBundle.loadString('${AssetPaths.LANG_BASEPATH}${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    return true;
  }

  String? translate(String key) {
    return _localizedStrings[key];
  }
}
