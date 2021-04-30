import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final _storage = FlutterSecureStorage();

  Future<String?> get jwtToken async => await _storage.read(key: 'jwtToken');
  Future setJwtToken(String? jwtToken) async => await _storage.write(key: 'jwtToken', value: jwtToken);


  Future<String?> get refreshToken async => await _storage.read(key: 'refreshToken');
  Future setApiKey(String? refreshToken) async => await _storage.write(key: 'refreshToken', value: refreshToken);
}