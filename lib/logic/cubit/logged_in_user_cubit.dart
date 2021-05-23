import 'package:bloc/bloc.dart';
import 'package:botsta_app/models/chat_practicant.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:botsta_app/startup.dart';
import 'package:equatable/equatable.dart';

part 'logged_in_user_state.dart';

class LoggedInUserCubit extends Cubit<LoggedInUserState> {
  LoggedInUserCubit() : super(LoggedInUserInitial());

  Future<ChatPracticant?> getLoggedInUserAsync() async {
    var client = getIt.get<BotstaApiClient>();
    ChatPracticant? user;
    try {
      user = await client.getLoggedInUserAsync();
    } catch (Exception) {
      user = null;
    }
    emit(LoggedInUserState(user));
    return user;
  }
}
