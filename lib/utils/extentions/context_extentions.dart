import 'package:botsta_app/config/lang/app_localizations.dart';
import 'package:flutter/material.dart';

extension ContextExtentions on BuildContext {
  String translate(String key) {
    return AppLocalizations.of(this).translate(key);
  }
}