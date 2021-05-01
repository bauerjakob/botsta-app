import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/graphql/login.req.gql.dart';
import 'package:botsta_app/logic/bloc/chatroom_bloc.dart';
import 'package:botsta_app/models/authentication_state.dart';
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
  final ChatroomBloc _chatroomBloc;

  AuthenticationBloc(this._chatroomBloc) : super(AuthenticationInitial());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is InitialAuthenticationEvent) {
      yield AuthenticationState(AuthState.Unauthenticated);
    }
    if (event is UpdateAuthenticationEvent) {
      yield AuthenticationState(event.state);
    }
  }

  Future<bool> loginAsync(String username, String password) async {
    var client = getIt.get<BotstaApiClient>();
    var successful = await client.loginUserAsync(username, password);
    if (successful) {
      emit(AuthenticationState(AuthState.Authenticated));
      _chatroomBloc.add(new InitialChatroomEvent());
    } else {
      emit(AuthenticationState(AuthState.Unauthenticated));
    }
    return successful;
  }
}
