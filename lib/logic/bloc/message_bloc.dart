import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/logic/bloc/chatroom_bloc.dart';
import 'package:botsta_app/models/message.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:botsta_app/services/sqlite_service.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

import '../../startup.dart';

part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageInitial());

  StreamSubscription<dynamic>? _messageSubscription;

  @override
  Stream<MessageState> mapEventToState(
    MessageEvent event,
  ) async* {
    var client = getIt.get<BotstaApiClient>();
    var sqliteService = await getIt.getAsync<SqliteService>();
    if (event is InitialMessageEvent) {
      if (_messageSubscription != null) {
        _messageSubscription!.cancel();
      }
      _messageSubscription = await client.messageSubscription();
    }
    else if (event is UpdateMessageEvent) {
      var messages = await sqliteService.getMessagesAsync((event.chatroomId));
      var msgMap = Map<String, List<Message>?>.from(state.messages);
      msgMap[event.chatroomId] = messages.toList();
      yield MessageState(msgMap);

      await client.getMessagesAsync(event.chatroomId);

      messages = await sqliteService.getMessagesAsync((event.chatroomId));
      msgMap = Map<String, List<Message>?>.from(state.messages);
      msgMap[event.chatroomId] = messages.toList();
      yield MessageState(msgMap);
    } else if (event is AppendMessageEvent) {
      var msgMap = _addMessageToState(event.message);
      yield MessageState(msgMap);
      getIt.get<ChatroomBloc>()..add(UpdateLatestChatroomMessageEvent(event.message));
    } else if (event is ResetMessageEvent) {
      if (_messageSubscription != null) {
        _messageSubscription!.cancel();
      }
      yield MessageInitial();
    }
  }

  Future postMessageAsync(String chatroomId, String message) async {
    var authState = getIt.get<AuthenticationBloc>().state as AuthenticationStateAuthenticated;
    var sqliteService = await getIt.getAsync<SqliteService>();
    var client = getIt.get<BotstaApiClient>();

    var msg = Message(Uuid().v4(), message, authState.user, chatroomId, DateTime.now(), true);
    add(AppendMessageEvent(msg));

    await Future.wait([
      sqliteService.addMessageToDbAsync(msg),
      client.postMessageAsync(chatroomId, message)
    ]);

  }

  Map<String, List<Message>?> _addMessageToState(Message message) {
    var msgMap = Map<String, List<Message>?>.from(state.messages);
    if (msgMap.containsKey(message.chatroomId) && msgMap[message.chatroomId] != null) {
      var list = List<Message>.from(state.messages[message.chatroomId]!);
      list.insert(0, message);
      msgMap[message.chatroomId] = list;
    }

    return msgMap;
  }
}
