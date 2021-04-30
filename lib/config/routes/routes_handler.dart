import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/screens/chat/chat_screen.dart';
import 'package:botsta_app/screens/home/home_screen.dart';
import 'package:botsta_app/screens/login/login_screen.dart';
import 'package:botsta_app/screens/settings/settings_screen.dart';
import 'package:botsta_app/screens/splash/splash_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'routes_config.dart';

_authenticationWrapper(context, child) {
  return BlocListener<AuthenticationBloc, AuthenticationState>(
    listener: (context, state) {
      String navigateTo;
      switch (state.state) {
        case AuthState.Authenticated:
          navigateTo = '/home';
          break;
        case AuthState.Unauthenticated:
          navigateTo = '/login';
          break;
        default:
          navigateTo = '/';
          break;
      }
      RoutesConfig.ROUTER.navigateTo(context, navigateTo, clearStack: true);
    },
    child: child,
  );
}

var splashHandler = Handler(
    handlerFunc: (context, params) =>
        _authenticationWrapper(context, SplashScreen()));

var homeHandler = Handler(
    handlerFunc: (context, params) =>
        _authenticationWrapper(context, HomeScreen()));

var loginHandler = Handler(
    handlerFunc: (context, params) =>
        _authenticationWrapper(context, LoginScreen()));

var chatHandler = Handler(
    handlerFunc: (context, params) => _authenticationWrapper(
        context, ChatScreen(context!.settings!.arguments as Chatroom)));

var settingsHandler = Handler(
    handlerFunc: (context, params) =>
        _authenticationWrapper(context, SettingsScreen()));
