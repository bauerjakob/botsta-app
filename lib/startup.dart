
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:botsta_app/services/local_storage_service.dart';
import 'package:botsta_app/services/secure_storage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void configureServices() {
  getIt.registerSingletonAsync<LocalStorageService>(() async => await LocalStorageService().initAsync());
  getIt.registerFactoryAsync<BotstaApiClient>(() async {
      var secureStorage = getIt.get<SecureStorageService>();
      var jwtToken = await secureStorage.jwtToken;
      return BotstaApiClient.create(jwtToken);
    });
  getIt.registerSingleton(SecureStorageService());
}

