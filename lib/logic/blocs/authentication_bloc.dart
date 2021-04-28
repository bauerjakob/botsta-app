import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:equatable/equatable.dart';

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
}
