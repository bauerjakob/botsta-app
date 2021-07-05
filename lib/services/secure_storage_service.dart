import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:convert/convert.dart';

class SecureStorageService {
  final _storage = FlutterSecureStorage();
  Future<String?> get token async => await _storage.read(key: 'jwtToken');
  Future setToken(String? token) async =>
      await _storage.write(key: 'jwtToken', value: token);

  Future<List<int>?> get privateKey async {
      var hexPrivateKey = await _storage.read(key: 'privateKey');

      if (hexPrivateKey != null) {
        return hex.decode(hexPrivateKey);
      }
      
      return null;
  }
  Future setPrivateKey(List<int>? privateKey) async => await _storage.write(
      key: 'privateKey',
      value: privateKey == null ? null : hex.encode(privateKey));


Future<List<int>?> get publicKey async {
      var hexPublicKey = await _storage.read(key: 'publicKey');

      if (hexPublicKey != null) {
        hex.decode(hexPublicKey);
      }
      
      return null;
  }
  Future setPublicKey(List<int>? publicKey) async => await _storage.write(
      key: 'publicKey',
      value: publicKey == null ? null : hex.encode(publicKey));

  Future<String?> get serverUrl async => await _storage.read(key: 'serverUrl');
  Future setServerUrl(String? serverUrl) async =>
      await _storage.write(key: 'serverUrl', value: serverUrl);

  Future<String?> get serverUrlWebsocket async =>
      await _storage.read(key: 'serverUrlWebsocket');
  Future setServerUrlWebsocket(String? serverUrlWebsocket) async =>
      await _storage.write(
          key: 'serverUrlWebsocket', value: serverUrlWebsocket);

  Future<String?> get refreshToken async =>
      await _storage.read(key: 'refreshToken');
  Future setRefreshToken(String? refreshToken) async =>
      await _storage.write(key: 'refreshToken', value: refreshToken);
}
