import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/graphql/chatrooms.data.gql.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/models/message.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:botsta_app/startup.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql/client.dart';

part 'chatroom_event.dart';
part 'chatroom_state.dart';

class ChatroomBloc extends Bloc<ChatroomEvent, ChatroomState> {
  ChatroomBloc() : super(ChatroomInitial());

  @override
  Stream<ChatroomState> mapEventToState(
    ChatroomEvent event,
  ) async* {
    if (event is InitialChatroomEvent) {
      yield ChatroomLoadingState();
      var client = getIt.get<BotstaApiClient>();
      try {
        var chatrooms = await client.getChatroomsAsync();
        yield ChatroomSuccessState(_orderChatrooms(chatrooms?.toList() ?? []));
      } catch (ex) {
        print(ex);
        yield ChatroomErrorState();
      }
    } else if (event is UpdateLatestChatroomMessageEvent) {
      if (state is ChatroomSuccessState) {
        var successState = state as ChatroomSuccessState;
        List<Chatroom> chatrooms = successState.chatrooms.map((c) => c.clone()).toList();
        var chatroom = chatrooms.firstWhere((c) => c.id == event.message.chatroomId);
        chatroom.latestMessage = event.message;

        var ret = chatrooms.where((c) => c.id != event.message.chatroomId).toList();
        ret.add(chatroom);
        ret = _orderChatrooms(ret);
        print (ret == successState.chatrooms);
        yield ChatroomSuccessState(ret);
      }

    } else if (event is AppendChatroomEvent) {
      if (state is ChatroomSuccessState) {
        var successState = state as ChatroomSuccessState;
        var chatrooms = successState.chatrooms.map((c) => c.clone()).toList();
        chatrooms.add(event.chatroom);
        yield ChatroomSuccessState(_orderChatrooms(chatrooms));
      }
    } else if (event is ResetChatroomEvent) {
      yield ChatroomInitial();
    }
  }

  Future crateChatroomSingleAsync(String practicantId) async {
    var client = getIt.get<BotstaApiClient>();
    try {
      var chatroom = await client.crateChatroomSingleAsync(practicantId);
      add(AppendChatroomEvent(chatroom));
    } catch (Exception) {

    }
  }

  Future createChatroomGroupAsync(String groupName, List<String> practicantIds) async {
    var client = getIt.get<BotstaApiClient>();
    try {
      var chatroom = await client.crateChatroomGroupAsync(groupName, practicantIds);
      add(AppendChatroomEvent(chatroom));
    } catch (Exception) {

    }
  }

  List<Chatroom> _orderChatrooms(List<Chatroom> chatrooms) {
    chatrooms.sort((a, b) {
      
     if (a.latestMessage == null && a.latestMessage == null) {
       return 0;
     } else if(a.latestMessage == null) {
       return -1;
     } else if (b.latestMessage == null) {
       return 1;
     } 
     var sendTimeA = a.latestMessage!.sendTime;
      var sendTimeB = b.latestMessage!.sendTime;
     return sendTimeA.compareTo(sendTimeB);
     
     });
    return chatrooms.reversed.toList();
  }
}
