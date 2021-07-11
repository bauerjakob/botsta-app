part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class InitialAuthenticationEvent extends AuthenticationEvent {}

class AuthenticationEventAuthenticated extends AuthenticationEvent {

  @override
  List<Object> get props => [];
}

class AuthenticationEventUnauthenticated extends AuthenticationEvent {

  @override
  List<Object> get props => [];
}

