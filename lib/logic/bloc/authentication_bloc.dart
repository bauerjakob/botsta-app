import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/graphql/login.req.gql.dart';
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
    var secureStorage = getIt.get<SecureStorageService>();
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(GLoginReq((b) => b..vars.name = username..vars.secret = password));
    client.dispose();
    await client.dispose();
    if (!res.hasErrors && res.data != null && res.data?.login != null) {
      emit(AuthenticationState(AuthState.Authenticated));
      secureStorage.setJwtToken(res.data?.login);
      return true;
    } else {
      emit(AuthenticationState(AuthState.Unauthenticated));
      secureStorage.setJwtToken(null);
      return false;
    }
  }
}
