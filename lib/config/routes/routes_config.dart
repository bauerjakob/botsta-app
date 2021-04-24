import 'package:botsta_app/config/routes/routes.dart';
import 'package:fluro/fluro.dart';

class RoutesConfig {
  static FluroRouter _router;

  static FluroRouter get ROUTER {
    if (_router == null) {
      _router = FluroRouter();
      Routes.configureRoutes(_router);
    }

    return _router;
  }
}