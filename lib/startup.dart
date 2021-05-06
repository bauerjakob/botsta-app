import 'package:botsta_app/graphql/logged-in-user.ast.gql.dart';
import 'package:botsta_app/graphql/refresh-token.req.gql.dart';
import 'package:botsta_app/logic/bloc/chatroom_bloc.dart';
import 'package:botsta_app/logic/cubit/logged_in_user_cubit.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:botsta_app/services/local_storage_service.dart';
import 'package:botsta_app/services/secure_storage_service.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql/client.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:botsta_app/utils/extentions/graphql_extentions.dart';

import 'constants/app_constants.dart';
import 'logic/bloc/message_bloc.dart';

final getIt = GetIt.instance;

void configureServices() {
  getIt.registerSingletonAsync<LocalStorageService>(
      () async => await LocalStorageService().initAsync());
  getIt.registerSingleton(BotstaApiClient());

  getIt.registerSingleton(LoggedInUserCubit());
  getIt.registerSingleton(MessageBloc());
  getIt.registerSingleton(ChatroomBloc());

  getIt.registerFactoryAsync<Client>(() async {
    var secureStorage = getIt.get<SecureStorageService>();
    var token  = await secureStorage.token;
    var refreshToken = await secureStorage.refreshToken;

    if (token != null && refreshToken != null && JwtDecoder.isExpired(token) && !JwtDecoder.isExpired(refreshToken)) {
      token = await _refreshToken();
    }

    var authLink = token != null ?  AuthLink(
        getToken: () async => 'Bearer $token',
      ) : null;

    final httpLink = HttpLink(
      AppConstants.BOTSTA_ENDPOINT,
    );

    var link = authLink != null ? authLink.concat(httpLink) : httpLink;
    var socketConfig = SocketClientConfig(delayBetweenReconnectionAttempts: Duration.zero, inactivityTimeout: Duration(hours: 2));
    final websocketLink = WebSocketLink(AppConstants.BOTSTA_ENDPOINT_WEBSOCKET, config: socketConfig);
    link = Link.split((request) => request.isSubscription, websocketLink, link);
    
    return Client(link: link);
  });
  getIt.registerSingleton(SecureStorageService());
}

Future<String> _refreshToken() async {
  var secureStorage = getIt.get<SecureStorageService>();
  var token  = await secureStorage.token;
  var refreshToken = await secureStorage.refreshToken;

  var authLink = AuthLink(
    getToken: () async => 'Bearer $refreshToken',
  );
  
  final httpLink = HttpLink(
    AppConstants.BOTSTA_ENDPOINT,
  );
  
  var link = authLink.concat(httpLink);
  var client =  Client(link: link);
  var response = await client.requestFirst(GRefresthTokenReq());
  token = response.data!.refreshToken!.token!;
  secureStorage.setToken(token);
  print("Token refreshed - $token");
  return token;
}
