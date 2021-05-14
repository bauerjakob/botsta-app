import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/models/user.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:equatable/equatable.dart';

import '../../startup.dart';

part 'all_users_event.dart';
part 'all_users_state.dart';

class AllUsersBloc extends Bloc<AllUsersEvent, AllUsersState> {
  AllUsersBloc() : super(AllUsersInitial());

  @override
  Stream<AllUsersState> mapEventToState(
    AllUsersEvent event,
  ) async* {
    if (event is LoadAllUsersEvent) {
      var client = getIt.get<BotstaApiClient>();
    yield AllUsersLoadingState();
    try {
      var users = await client.getAllUsersAsync();
      yield AllUsersSuccessState(_sortUsers(users.toList()));
    } catch(Exception) {
      yield AllUsersErrorState();
    }
    }
  }

  List<User> _sortUsers(List<User> users) {
    users.sort((a, b) => a.name.compareTo(b.name));
    return users;
  }
}
