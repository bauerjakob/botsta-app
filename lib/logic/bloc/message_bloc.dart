import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/models/message.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:equatable/equatable.dart';

import '../../startup.dart';

part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageInitial()) {
  }

  @override
  Stream<MessageState> mapEventToState(
    MessageEvent event,
  ) async* {
    var client = getIt.get<BotstaApiClient>();
    if (event is InitialMessageEvent) {
      await client.messageSubscription();
    }
    else if (event is UpdateMessageEvent) {
      var messages = await client.getMessagesAsync(event.chatroomId);
      var msgMap = Map<String, List<Message>?>.from(state.messages);
      msgMap[event.chatroomId] = messages?.toList();
      yield MessageState(msgMap);
    } else if (event is AppendMessageEvent) {
      var messages = await client.getMessagesAsync(event.message.chatroomId);
      var msgMap = Map<String, List<Message>?>.from(state.messages);
      msgMap[event.message.chatroomId] = messages?.toList();
      yield MessageState(msgMap);
      //yield MessageState(_addMessageToState(event.message));
    }
  }

  Future<Message?> postMessageAsync(String chatroomId, String message) async {
    var client = getIt.get<BotstaApiClient>();
    await client.postMessageAsync(chatroomId, message);
    // if (msg != null) {
    //   emit(_addMessageToState(msg));
    // }
  }

  Map<String, List<Message>?> _addMessageToState(Message message) {
    var msgMap = Map<String, List<Message>?>.from(state.messages);
    if (msgMap.containsKey(message.chatroomId) && msgMap[message.chatroomId] != null) {
      msgMap[message.chatroomId]!.insert(0, message);
    } else {
      msgMap[message.chatroomId] = [message];
    }

    return msgMap;
  }
}
