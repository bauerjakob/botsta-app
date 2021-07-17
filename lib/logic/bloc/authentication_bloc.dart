import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/config/routes/routes_config.dart';
import 'package:botsta_app/graphql/login.req.gql.dart';
import 'package:botsta_app/logic/bloc/chatroom_bloc.dart';
import 'package:botsta_app/logic/bloc/message_bloc.dart';
import 'package:botsta_app/logic/bloc/own_bots_bloc.dart';
import 'package:botsta_app/logic/cubit/logged_in_user_cubit.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:botsta_app/models/bot.dart';
import 'package:botsta_app/models/chat_practicant.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:botsta_app/services/secure_storage_service.dart';
import 'package:botsta_app/services/sqlite_service.dart';
import 'package:botsta_app/startup.dart';
import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:graphql/client.dart';
import 'package:botsta_app/utils/extentions/graphql_extentions.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationStateUnknown());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is InitialAuthenticationEvent) {
      yield AuthenticationStateUnknown();
    }
    else if (event is AuthenticationEventAuthenticated) {
        if (!(state is AuthenticationStateAuthenticated)) {
          var user = await getIt.get<LoggedInUserCubit>().getLoggedInUserAsync();

          if (user != null) {
            var secureStorage = getIt.get<SecureStorageService>();
            var refreshToken = await secureStorage.refreshToken;
            String sessionId = JwtDecoder.decode(refreshToken!)['jti'];
            yield AuthenticationStateAuthenticated(user, sessionId);
            getIt.get<ChatroomBloc>().add(InitialChatroomEvent());
            getIt.get<MessageBloc>().add(InitialMessageEvent());
          } else {
            yield AuthenticationStateAuthenticationFailed();
          }
        }
    } else if (event is AuthenticationEventUnauthenticated) {
      if (!(state is AuthenticationStateUnauthenticated)) {
        yield AuthenticationStateUnauthenticated();
        await _logoutAsync();
      }
    }
  }

  Future _logoutAsync() async {
    var client = getIt.get<BotstaApiClient>();
    await client.logoutAsync();
    await getIt.get<SecureStorageService>().setRefreshToken(null);
    await getIt.get<SecureStorageService>().setToken(null);
    getIt.get<ChatroomBloc>().add(ResetChatroomEvent());
    getIt.get<MessageBloc>().add(ResetMessageEvent());
    final sqliteService = await getIt.getAsync<SqliteService>();
    await sqliteService.clearDatasAsync();
  }

  Future<bool> loginAsync(String username, String password) async {
    var client = getIt.get<BotstaApiClient>();
    var successful = await client.loginUserAsync(username, password);
    if (successful) {
      add(AuthenticationEventAuthenticated());
    } else {
      add(AuthenticationEventUnauthenticated());
    }
    return successful;
  }

  Future<bool> registerAsync(String username, String password) async {
    var client = getIt.get<BotstaApiClient>();
    var successful = await client.regiserUserAsync(username, password);
    if (successful) {
      add(AuthenticationEventAuthenticated());
    } else {
      add(AuthenticationEventUnauthenticated());
    }
    return successful;
  }

  Future<String> registerBotAsync(String botName, bool isPublic) async {
    var client = getIt.get<BotstaApiClient>();
    var ret =  await client.registerBotAsync(botName, isPublic);
    
    //getIt.get<OwnBotsBloc>().add(AddBotEvent(Bot(botName, isPublic));
    getIt.get<OwnBotsBloc>().add(LoadBotsEvent());

    return ret;
  }
}
