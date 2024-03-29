import 'package:botsta_app/graphql/refresh-token.req.gql.dart';
import 'package:botsta_app/logic/bloc/all_users_bloc.dart';
import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/logic/bloc/chatroom_bloc.dart';
import 'package:botsta_app/logic/bloc/own_bots_bloc.dart';
import 'package:botsta_app/logic/cubit/logged_in_user_cubit.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:botsta_app/services/e2ee_service.dart';
import 'package:botsta_app/services/local_storage_service.dart';
import 'package:botsta_app/services/secure_storage_service.dart';
import 'package:botsta_app/services/sqlite_service.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:botsta_app/utils/extentions/graphql_extentions.dart';

import 'constants/app_constants.dart';
import 'logic/bloc/message_bloc.dart';

final getIt = GetIt.instance;

void configureServices() {
  getIt.registerSingletonAsync(() async {
    final sqlite = SqliteService();
    await sqlite.initAsync();
    return sqlite;
  });
  
  getIt.registerSingleton(E2EEService());
  getIt.registerSingleton(BotstaApiClient());
  getIt.registerSingleton(LoggedInUserCubit());
  getIt.registerSingleton(MessageBloc());
  getIt.registerSingleton(ChatroomBloc());
  getIt.registerSingleton(AllUsersBloc());
  getIt.registerSingleton(AuthenticationBloc());
  getIt.registerSingleton(OwnBotsBloc());

  getIt.registerSingletonAsync<LocalStorageService>(() async => await LocalStorageService().initAsync());


  getIt.registerFactoryAsync<Client>(() async {
    var secureStorage = getIt.get<SecureStorageService>();
    var token  = await secureStorage.token;
    var refreshToken = await secureStorage.refreshToken;

    var serverUrl = await secureStorage.serverUrl;
    var serverUrlWebsocket = await secureStorage.serverUrlWebsocket;

    if (refreshToken != null && (token == null || JwtDecoder.isExpired(token)) && !JwtDecoder.isExpired(refreshToken)) {
      token = await _refreshToken();
    }

    var authLink = token != null ?  AuthLink(
        getToken: () async => 'Bearer $token',
      ) : null;

    final httpLink = HttpLink(
      serverUrl!
    );

    var link = authLink != null ? authLink.concat(httpLink) : httpLink;
    var socketConfig = SocketClientConfig(delayBetweenReconnectionAttempts: Duration(seconds: 1), inactivityTimeout: Duration(seconds: 30), autoReconnect: true);
    final websocketLink = WebSocketLink(serverUrlWebsocket!, config: socketConfig);
    link = Link.split((request) => request.isSubscription, websocketLink, link);
    return Client(link: link);
  });
  getIt.registerSingleton(SecureStorageService());
}

Future<String> _refreshToken() async {
  var secureStorage = getIt.get<SecureStorageService>();
  var token  = await secureStorage.token;
  var refreshToken = await secureStorage.refreshToken;

  var serverUrl = await secureStorage.serverUrl;

  var authLink = AuthLink(
    getToken: () async => 'Bearer $refreshToken',
  );
  
  final httpLink = HttpLink(
    serverUrl!,
  );
  
  var link = authLink.concat(httpLink);
  var client =  Client(link: link);
  var response = await client.requestFirst(GRefreshTokenReq());
  token = response.data!.refreshToken!.token!;
  secureStorage.setToken(token);
  print("Token refreshed - $token");
  return token;
}
