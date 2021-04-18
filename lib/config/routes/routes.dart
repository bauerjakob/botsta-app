import 'package:botsta_app/config/routes/routes_handler.dart';
import 'package:botsta_app/screens/settings/settings_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static const HOME = '/';
  static const CHAT = '/chat';
  static const SETTINGS = '/settings';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });
    router.define(HOME, handler: homeHandler);
    router.define(CHAT, handler: chatHandler);
    router.define(SETTINGS, handler: settingsHandler);
  }
}