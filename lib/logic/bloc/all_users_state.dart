part of 'all_users_bloc.dart';

abstract class AllUsersState extends Equatable {
  const AllUsersState();
  
  @override
  List<Object> get props => [];
}

class AllUsersInitial extends AllUsersState {}

class AllUsersLoadingState extends AllUsersState {

}

class AllUsersSuccessState extends AllUsersState {
  final List<User> users;

  const AllUsersSuccessState(this.users);

  @override
  List<Object> get props => [];
}

class AllUsersErrorState extends AllUsersState {

}

