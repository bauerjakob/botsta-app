part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState();
  
  @override
  List<Object> get props => [];
}

class AuthenticationStateUnknown extends AuthenticationState {

}

class AuthenticationStateAuthenticated extends AuthenticationState {
  final ChatPracticant user;
  final String sessionId;

  const AuthenticationStateAuthenticated(this.user, this.sessionId);

  @override
  List<Object> get props => [user, sessionId];
}

class AuthenticationStateUnauthenticated extends AuthenticationState {

}


class AuthenticationStateAuthenticationFailed extends AuthenticationState {

}
