import 'dart:convert';

import 'package:botsta_app/services/secure_storage_service.dart';
import 'package:botsta_app/startup.dart';
import 'package:cryptography/cryptography.dart';
import 'package:convert/convert.dart';

class E2EEService {
  Future<String> generateKeyPairAsync() async {
    final algorithm = Cryptography.instance.x25519();

    final keyPair = await algorithm.newKeyPair();
    final privateKey = await keyPair.extractPrivateKeyBytes();
    final publicKey = await keyPair.extractPublicKey();

    var secureStorage = getIt.get<SecureStorageService>();
    secureStorage.setPrivateKey(privateKey);
    secureStorage.setPublicKey(publicKey.bytes);

    return hex.encode(publicKey.bytes);
  }

  Future<String> encryptMessageAsync(String message, String remotePublicKeyHex) async {
    final secretKey = await _getSharedKeyAsync(remotePublicKeyHex);

    final algorithm = AesGcm.with256bits();
    final nonce = algorithm.newNonce();

    final secretBox = await algorithm.encrypt(
      utf8.encode(message),
      secretKey: secretKey,
      nonce: nonce,
    );

    final cipherTextHex = hex.encode(secretBox.cipherText);
    final nonceHex = hex.encode(secretBox.nonce);
    final macHex = hex.encode(secretBox.mac.bytes);

    return "$cipherTextHex.$nonceHex.$macHex";
  }

  Future<String> decrypMessageAsync(String message, String remotePublicKeyHex) async {
    final secretKey = await _getSharedKeyAsync(remotePublicKeyHex);

    final algorithm = AesGcm.with256bits();

    final parts = message.split('.');

    var cipherText = hex.decode(parts[0]);
    var nonce = hex.decode(parts[1]);
    var mac = Mac(hex.decode(parts[2]));

    final secretBox  = SecretBox(cipherText, nonce: nonce, mac: mac);

    final decryptedBytes = await algorithm.decrypt(secretBox, secretKey: secretKey);

    return utf8.decode(decryptedBytes);
  }

  Future<KeyPair> _getOwnKeyPair() async {
      final secureStorage = getIt.get<SecureStorageService>();
      final privateKey = await secureStorage.privateKey;

      final algorithm = Cryptography.instance.x25519();
      final keyPair = await algorithm.newKeyPairFromSeed(privateKey!);
      
      return keyPair;
  }

  Future<SecretKey> _getSharedKeyAsync(String remotePublicKeyHex) async {
    final keyPair = await _getOwnKeyPair();

    final algorithm = Cryptography.instance.x25519();
    final remotePublicKey = SimplePublicKey(hex.decode(remotePublicKeyHex), type: KeyPairType.x25519);

    final secretKey = await algorithm.sharedSecretKey(keyPair: keyPair, remotePublicKey: remotePublicKey);
    
    return secretKey;
  }
}