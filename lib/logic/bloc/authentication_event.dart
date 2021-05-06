part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class InitialAuthenticationEvent extends AuthenticationEvent {}

class UpdateAuthenticationEvent extends AuthenticationEvent {
  final AuthState state;
  const UpdateAuthenticationEvent(this.state);

  @override
  List<Object> get props => [state];
}
