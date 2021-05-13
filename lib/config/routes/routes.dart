import 'package:botsta_app/config/routes/routes_handler.dart';
import 'package:botsta_app/screens/settings/settings_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static const SPLASH = '/';
  static const HOME = '/home';
  static const CHAT = '/chat';
  static const LOGIN = '/login';
  static const SETTINGS = '/settings';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });
    router.define(SPLASH, handler: splashHandler, transitionType: TransitionType.none);
    router.define(HOME, handler: homeHandler, transitionType: TransitionType.none);
    router.define(LOGIN, handler: loginHandler, transitionType: TransitionType.none);
    router.define(CHAT, handler: chatHandler, transitionType: TransitionType.cupertino);
    router.define(SETTINGS, handler: settingsHandler, transitionType: TransitionType.cupertino);
  }
}