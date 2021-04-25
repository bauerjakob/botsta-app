import 'package:botsta_app/constants/app_constants.dart';
import 'package:botsta_app/services/local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/startup.dart';

import 'app_localizations.dart';

class AppLanguage extends ChangeNotifier {
  Locale _appLocale = Locale(AppConstants.LANGCODE_DEFAULT);
  Future<LocalStorageService> get  _localStorageService async => await getIt.getAsync<LocalStorageService>();

  Locale get appLocal => _appLocale;


  Future<Locale?> fetchLocale() async {
    var lsService = await _localStorageService;
    var langCode = lsService.langCode;
    if (langCode == null) {
      _appLocale = Locale(AppConstants.LANGCODE_DEFAULT);
    } else {
      _appLocale = Locale(langCode);
    }
    return _appLocale;
  }


  void changeLanguage(Locale type) async {
    var lsService = await _localStorageService;

    if (_appLocale == type) {
      return;
    }
    var locale = AppLocalizations.supportedLocales
      .firstWhere((l) => type == l, orElse: null);

    if (locale != null) {
      _appLocale = locale;
      lsService.langCode = locale.languageCode;
      notifyListeners();
    }
  }
}