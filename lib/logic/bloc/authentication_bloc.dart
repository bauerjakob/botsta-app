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

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {

  AuthenticationBloc() : super(AuthenticationInitial());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is InitialAuthenticationEvent) {
      yield AuthenticationState(AuthState.Unknown);
    }
    if (event is UpdateAuthenticationEvent) {
      yield AuthenticationState(event.state);

      if (event.state == AuthState.Authenticated) {
        getIt.get<ChatroomBloc>().add(new InitialChatroomEvent());
        getIt.get<MessageBloc>().add(new InitialMessageEvent());
      }

      if (event.state == AuthState.Unauthenticated) {
        await getIt.get<SecureStorageService>().setRefreshToken(null);
        await getIt.get<SecureStorageService>().setToken(null);
      }
    }
  }

  Future<bool> loginAsync(String username, String password) async {
    var client = getIt.get<BotstaApiClient>();
    var successful = await client.loginUserAsync(username, password);
    if (successful) {
      var user = await getIt.get<LoggedInUserCubit>().getLoggedInUserAsync();
      if (user != null) {
        emit(AuthenticationState(AuthState.Authenticated));
      }
    } else {
      emit(AuthenticationState(AuthState.Unauthenticated));
    }
    return successful;
  }
}
