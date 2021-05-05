import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:botsta_app/services/local_storage_service.dart';
import 'package:botsta_app/services/secure_storage_service.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';

import 'constants/app_constants.dart';
import 'logic/bloc/message_bloc.dart';

final getIt = GetIt.instance;

void configureServices() {
  getIt.registerSingletonAsync<LocalStorageService>(
      () async => await LocalStorageService().initAsync());
  getIt.registerSingleton(BotstaApiClient());

  getIt.registerSingleton(MessageBloc());

  getIt.registerFactoryAsync<Client>(() async {
    var secureStorage = getIt.get<SecureStorageService>();
    var jwtToken = await secureStorage.jwtToken;

    AuthLink? authLink;

    if (jwtToken != null) {
      authLink = AuthLink(
        getToken: () async => 'Bearer $jwtToken',
      );
    }

    final httpLink = HttpLink(
      AppConstants.BOTSTA_ENDPOINT,
    );

    var link = authLink != null ? authLink.concat(httpLink) : httpLink;

    final websocketLink = WebSocketLink(AppConstants.BOTSTA_ENDPOINT_WEBSOCKET);
    link = Link.split((request) => request.isSubscription, websocketLink, link);
    
    return Client(link: link);
  });
  getIt.registerSingleton(SecureStorageService());
}
