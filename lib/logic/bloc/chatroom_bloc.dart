import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/graphql/chatrooms.data.gql.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/models/message.dart';
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
      yield ChatroomState(_orderChatrooms(chatrooms?.toList() ?? []));
    } else if (event is UpdateLatestChatroomMessageEvent && state.chatrooms != null) {
      List<Chatroom> chatrooms = List.from(state.chatrooms!);
      var chatroom = chatrooms.firstWhere((c) => c.id == event.message.chatroomId);
      chatroom.latestMessage = event.message;

      var ret = chatrooms.where((c) => c.id != event.message.chatroomId).toList();
      ret.add(chatroom);
      yield ChatroomState(_orderChatrooms(ret));

    }
  }

  List<Chatroom> _orderChatrooms(List<Chatroom> chatrooms) {
    chatrooms.sort((a, b) {
      
     if (a.latestMessage == null && a.latestMessage == null) {
       return 0;
     } else if(a.latestMessage == null) {
       return -1;
     } else if (a.latestMessage == null) {
       return 1;
     } 
     var sendTimeA = a.latestMessage!.sendTime;
      var sendTimeB = b.latestMessage!.sendTime;
     return sendTimeA.compareTo(sendTimeB);
     
     });
    return chatrooms.reversed.toList();
  }
}
