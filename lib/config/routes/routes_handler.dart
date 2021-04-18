import 'package:botsta_app/screens/chat/chat_screen.dart';
import 'package:botsta_app/screens/home/home_screen.dart';
import 'package:botsta_app/screens/settings/settings_screen.dart';
import 'package:fluro/fluro.dart';


var homeHandler = Handler(
    handlerFunc: (context, params) => HomeScreen()
  );

var chatHandler = Handler(
    handlerFunc: (context, params) => ChatScreen()
  );

var settingsHandler = Handler(
    handlerFunc: (context, params) => SettingsScreen()
  );