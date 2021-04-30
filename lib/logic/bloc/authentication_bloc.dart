import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:botsta_app/services/secure_storage_service.dart';
import 'package:botsta_app/startup.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql/client.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial());

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
    var client = await getIt.getAsync<BotstaApiClient>();
    var secureStorage = getIt.get<SecureStorageService>();

    var result = await client.performMutation('mutation { login(name: "$username", secret: "$password") }');
    var data = result.data;
    if (!result.hasException && data != null && data.containsKey('login') && data['login'] != null) {
      emit(AuthenticationState(AuthState.Authenticated));
      return true;
    } else {
      emit(AuthenticationState(AuthState.Unauthenticated));
      return false;
    }
  }
}
