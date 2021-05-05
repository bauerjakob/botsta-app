import 'dart:async';

import 'package:botsta_app/constants/constants.dart';
import 'package:botsta_app/graphql/chatroom-messages.req.gql.dart';
import 'package:botsta_app/graphql/chatrooms.data.gql.dart';
import 'package:botsta_app/graphql/chatrooms.req.gql.dart';
import 'package:botsta_app/graphql/login.req.gql.dart';
import 'package:botsta_app/graphql/message-subscription.data.gql.dart';
import 'package:botsta_app/graphql/message-subscription.req.gql.dart';
import 'package:botsta_app/graphql/message-subscription.var.gql.dart';
import 'package:botsta_app/graphql/post-message.req.gql.dart';
import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/logic/bloc/graphql_bloc.dart';
import 'package:botsta_app/logic/bloc/message_bloc.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/models/message.dart';
import 'package:botsta_app/services/secure_storage_service.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:botsta_app/utils/extentions/graphql_extentions.dart';
import 'package:provider/provider.dart';

import '../startup.dart';

class BotstaApiClient {
  StreamSubscription? _messageSubscription;

  Future<bool> loginUserAsync(String username, String password) async {
    var secureStorage = getIt.get<SecureStorageService>();
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(GLoginReq((b) => b..vars.name = username..vars.secret = password));
    client.dispose();
    await client.dispose();
    if (!res.hasErrors && res.data != null && res.data?.login != null && !res.data!.login!.hasError) {
      var token = res.data!.login!.token;
      var refreshToken = res.data!.login!.refreshToken;
      secureStorage.setToken(token);
      secureStorage.setRefreshToken(refreshToken);
      return true;
    } else {
      secureStorage.setToken(null);
      secureStorage.setRefreshToken(null);
      return false;
    }
  }

  Future<Iterable<Chatroom>?> getChatroomsAsync() async {
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(GGetChatroomsReq());
    client.dispose();

    if (res.data?.chatrooms != null) {
      return res.data!.chatrooms!.map((c) { 
        var chatroom = Chatroom(c.id, c.name!, c.latestMessage?.message);
        return chatroom;
      });
    }

    return null;
  }

  Future<Iterable<Message>?> getMessagesAsync(String chatroomId) async {
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(GGetChatroomMessagesReq((b) => b..vars.chatroomId = chatroomId));
    client.dispose();

    if (res.data?.chatroom?.messages != null) {
      var chatroomId = res.data!.chatroom!.id;
      return res.data!.chatroom!.messages!.map((m) => Message(m.id, m.message, m.senderId, chatroomId, m.senderIsMe!));
    }
    return null;
  }

  Future<Message?> postMessageAsync(String chatroomId, String message) async {
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(GPostMessageReq((b) => b..vars.chatroomId = chatroomId..vars.message = message));
    client.dispose();

    String? id = res.data?.postMessage?.id;
    if (id != null) {
      var senderId = res.data!.postMessage!.senderId;
      return Message(id, message,senderId, chatroomId, true);
    }
    return null;
  }

  Future messageSubscription() async{
    var client = await getIt.getAsync<Client>();
    var secureStorage = getIt.get<SecureStorageService>();
    var refreshToken = await secureStorage.refreshToken;

    if (_messageSubscription != null) {
      _messageSubscription!.cancel();
    }
    _messageSubscription = client.request(GMessageSubscriptionReq((b) => b..vars.refreshToken = refreshToken)).listen((event) {
       var data = event.data?.messageReceived;
        if (data != null) {
          var msg = Message(data.id, data.message, data.senderId, data.chatroomId, data.senderIsMe ?? false);
          getIt.get<MessageBloc>().add(AppendMessageEvent(msg));
        }
     });
  }

  void dispose() {
    if (_messageSubscription != null) {
      _messageSubscription!.pause();
    }
  }

}
