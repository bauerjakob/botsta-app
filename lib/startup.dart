
import 'package:botsta_app/services/local_storage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void configureServices() {
  getIt.registerSingletonAsync<LocalStorageService>(() async => await LocalStorageService().initAsync());
}

