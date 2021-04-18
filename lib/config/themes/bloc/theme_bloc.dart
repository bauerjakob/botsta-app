import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/config/themes/theme_config.dart';
import 'package:botsta_app/services/local_storage_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/config/themes/bloc/theme_state.dart';
import 'package:botsta_app/startup.dart';


part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial());

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    var localStorageService = await getIt.getAsync<LocalStorageService>();
    if (event is ThemeEventInitial) {
      var appTheme = localStorageService.theme;
      yield ThemeState(appTheme: appTheme);
    } else if (event is ThemeEventUpdate) {
      var appTheme = event.theme;
      localStorageService.theme = appTheme;
      yield ThemeState(appTheme: appTheme);
    }
  }
}
