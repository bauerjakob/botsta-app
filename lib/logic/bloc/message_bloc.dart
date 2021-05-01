import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/models/message.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:equatable/equatable.dart';

import '../../startup.dart';

part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageInitial());

  @override
  Stream<MessageState> mapEventToState(
    MessageEvent event,
  ) async* {
    if (event is UpdateMessageEvent) {
      var client = getIt.get<BotstaApiClient>();
      var messages = await client.getMessagesAsync(event.chatroomId);
      yield MessageState(messages?.toList() ?? []);
    }
  }

  Future<Message?> postMessageAsync(String chatroomId, String message) async {
    var client = getIt.get<BotstaApiClient>();
    var msg =  await client.postMessageAsync(chatroomId, message);
    if (msg != null) {
      var list = List<Message>.from(state.messages);
      list.insert(0, msg);
      emit(MessageState(list));
    }
  }
}
