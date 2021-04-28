part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  final AuthState state;

  const AuthenticationState(this.state);
  
  @override
  List<Object> get props => [state];
}

class AuthenticationInitial extends AuthenticationState {
  AuthenticationInitial() : super(AuthState.Unknown);
}
