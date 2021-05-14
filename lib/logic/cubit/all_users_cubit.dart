import 'package:bloc/bloc.dart';
import 'package:botsta_app/models/user.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:botsta_app/startup.dart';
import 'package:equatable/equatable.dart';

part 'all_users_state.dart';

class AllUsersCubit extends Cubit<AllUsersState> {
  AllUsersCubit() : super(AllUsersInitial());

  Future loadAllUsersBesideOfMe() async {
    var client = getIt.get<BotstaApiClient>();
    emit(AllUsersLoadingState());
    try {
      var users = await client.getAllUsersAsync();
      AllUsersSuccessState(users.toList());
    } catch(Exception) {
      emit(AllUsersErrorState());
    }
  }
}
