import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/constants/constants.dart';
import 'package:botsta_app/services/local_storage_service.dart';
import 'package:botsta_app/startup.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../app_localizations.dart';

part 'localization_event.dart';
part 'localization_state.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc() : super(LocalizationInitial());

  @override
  Stream<LocalizationState> mapEventToState(
    LocalizationEvent event,
  ) async* {
    var lsService =  await getIt.getAsync<LocalStorageService>();
    
    if (event is InitialLocalizationEvent) {
      var langCode = lsService.langCode;
      var locale = Locale(langCode == null ? AppConstants.LANGCODE_DEFAULT : langCode);
      lsService.langCode = locale.languageCode;
      yield LocalizationState(locale);
    }
    else if (event is UpdateLocalizationEvent) {
      var locale = AppLocalizations.supportedLocales
      .firstWhere((l) => event.locale == l, orElse: () => Locale(AppConstants.LANGCODE_DEFAULT));
      lsService.langCode = locale.toString();
      yield LocalizationState(locale);
    }
  }
}
