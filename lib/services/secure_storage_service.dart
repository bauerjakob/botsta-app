import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final _storage = FlutterSecureStorage();

  Future<String?> get token async => await _storage.read(key: 'jwtToken');
  Future setToken(String? token) async => await _storage.write(key: 'jwtToken', value: token);

  Future<String?> get serverUrl async => await _storage.read(key: 'serverUrl');
  Future setServerUrl(String? serverUrl) async => await _storage.write(key: 'serverUrl', value: serverUrl);

  Future<String?> get serverUrlWebsocket async => await _storage.read(key: 'serverUrlWebsocket');
  Future setServerUrlWebsocket(String? serverUrlWebsocket) async => await _storage.write(key: 'serverUrlWebsocket', value: serverUrlWebsocket);

  Future<String?> get refreshToken async => await _storage.read(key: 'refreshToken');
  Future setRefreshToken(String? refreshToken) async => await _storage.write(key: 'refreshToken', value: refreshToken);
}