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
      List<Chatroom> chatrooms = state.chatrooms?.map((c) => c.clone()).toList() ?? [];
      var chatroom = chatrooms.firstWhere((c) => c.id == event.message.chatroomId);
      chatroom.latestMessage = event.message;

      var ret = chatrooms.where((c) => c.id != event.message.chatroomId).toList();
      ret.add(chatroom);
      ret = _orderChatrooms(ret);
      print (ret == state.chatrooms);
      yield ChatroomState(ret);

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
