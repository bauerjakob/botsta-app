import 'package:bloc/bloc.dart';
import 'package:botsta_app/models/user.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:botsta_app/startup.dart';
import 'package:equatable/equatable.dart';

part 'logged_in_user_state.dart';

class LoggedInUserCubit extends Cubit<LoggedInUserState> {
  LoggedInUserCubit() : super(LoggedInUserInitial());

  Future<User?> getLoggedInUserAsync() async {
    var client = getIt.get<BotstaApiClient>();
    var user = await client.getLoggedInUserAsync();
    emit(LoggedInUserState(user));
    return user;
  }
}