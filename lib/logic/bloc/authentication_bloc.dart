import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/graphql/login.req.gql.dart';
import 'package:botsta_app/logic/bloc/chatroom_bloc.dart';
import 'package:botsta_app/logic/bloc/message_bloc.dart';
import 'package:botsta_app/logic/cubit/logged_in_user_cubit.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:botsta_app/models/user.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:botsta_app/services/secure_storage_service.dart';
import 'package:botsta_app/startup.dart';
import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:graphql/client.dart';
import 'package:botsta_app/utils/extentions/graphql_extentions.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is InitialAuthenticationEvent) {
      yield AuthenticationState(AuthState.Unknown);
    }
    if (event is UpdateAuthenticationEvent) {
      if (event.state == state.state) {
        return;
      }
      if (event.state == AuthState.Authenticated) {
        if (state.state != AuthState.Authenticated) {
          var user =
              await getIt.get<LoggedInUserCubit>().getLoggedInUserAsync();
          if (user != null) {
            yield AuthenticationState(event.state);
            getIt.get<ChatroomBloc>().add(InitialChatroomEvent());
            getIt.get<MessageBloc>().add(InitialMessageEvent());
          } else {
            yield AuthenticationState(AuthState.Unauthenticated);
            _logout();
          }
        }
      } else if (event.state == AuthState.Unauthenticated) {
        yield AuthenticationState(event.state);
        _logout();
      } else {
        yield AuthenticationState(event.state);
      }
    }
  }

  Future _logout() async {
    await getIt.get<SecureStorageService>().setRefreshToken(null);
    await getIt.get<SecureStorageService>().setToken(null);
    getIt.get<ChatroomBloc>().add(ResetChatroomEvent());
    getIt.get<MessageBloc>().add(ResetMessageEvent());
  }

  Future<bool> loginAsync(String username, String password) async {
    var client = getIt.get<BotstaApiClient>();
    var successful = await client.loginUserAsync(username, password);
    if (successful) {
      add(UpdateAuthenticationEvent(AuthState.Authenticated));
    } else {
      add(UpdateAuthenticationEvent(AuthState.Unauthenticated));
    }
    return successful;
  }

  Future<bool> registerAsync(String username, String password) async {
    var client = getIt.get<BotstaApiClient>();
    var successful = await client.regiserUserAsync(username, password);
    if (successful) {
      add(UpdateAuthenticationEvent(AuthState.Authenticated));
    } else {
      add(UpdateAuthenticationEvent(AuthState.Unauthenticated));
    }
    return successful;
  }
}
