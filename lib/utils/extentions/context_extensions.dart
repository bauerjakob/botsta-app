import 'package:botsta_app/config/lang/app_localizations.dart';
import 'package:flutter/material.dart';

extension ContextExtentions on BuildContext {
  String translate(String key) {
    return AppLocalizations.of(this).translate(key) ?? 'TRANSLATION_NOT_FOUND';
  }

  ThemeData theme() {
    return Theme.of(this);
  }

  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }

  IconThemeData iconTheme() {
    return Theme.of(this).iconTheme;
  }

  double screenWidth() {
    return MediaQuery.of(this).size.width;
  }

  double screenHeight() {
    return MediaQuery.of(this).size.height;
  }

  NavigatorState navigator() {
    return Navigator.of(this);
  }
}