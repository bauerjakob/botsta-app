part of 'logged_in_user_cubit.dart';

class LoggedInUserState extends Equatable {
  final User? loggedInUser;

  const LoggedInUserState(this.loggedInUser);
  
  @override
  List<Object> get props => [loggedInUser ?? {} ];
}

class LoggedInUserInitial extends LoggedInUserState {
  LoggedInUserInitial() : super(null);
}
