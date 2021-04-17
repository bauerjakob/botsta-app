import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  SharedPreferences _preferences;

  Future<LocalStorageService> initAsync() async {
    _preferences = await SharedPreferences.getInstance();
    return this;
  }
  String get langCode => _preferences.getString('lang_code');
  set langCode(String langCode) => _preferences.setString('lang_code', langCode);
}