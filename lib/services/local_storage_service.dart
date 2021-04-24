import 'package:botsta_app/config/themes/theme_config.dart';
import 'package:botsta_app/constants/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  late SharedPreferences _preferences;

  Future<LocalStorageService> initAsync() async {
    _preferences = await SharedPreferences.getInstance();
    return this;
  }
  String get langCode => _preferences.getString('lang_code')!;
  set langCode(String langCode) => _preferences.setString('lang_code', langCode);

  AppTheme get theme {
    var theme = _preferences.getString('theme');
    var appTheme =  AppTheme.values.firstWhere((t) => t.toString() == theme, orElse: null);
    return appTheme == null ? AppConstants.DEFAULT_THEME : appTheme;
  }
  set theme(AppTheme theme) => _preferences.setString('theme', theme.toString());
}