import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/graphql/chatrooms.data.gql.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:botsta_app/startup.dart';
import 'package:equatable/equatable.dart';

part 'chatroom_event.dart';
part 'chatroom_state.dart';

class ChatroomBloc extends Bloc<ChatroomEvent, ChatroomState> {
  ChatroomBloc() : super(ChatroomInitial());

  @override
  Stream<ChatroomState> mapEventToState(
    ChatroomEvent event,
  ) async* {
    if (event is InitialChatroomEvent) {
      var client = getIt.get<BotstaApiClient>();
      var chatrooms = await client.getChatroomsAsync();
      yield ChatroomState(chatrooms?.toList());
    }
  }
}
