import 'dart:async';
import 'dart:convert';

import 'package:botsta_app/constants/constants.dart';
import 'package:botsta_app/graphql/all_chat_practicants.req.gql.dart';
import 'package:botsta_app/graphql/chatroom-messages.req.gql.dart';
import 'package:botsta_app/graphql/chatrooms.data.gql.dart';
import 'package:botsta_app/graphql/chatrooms.req.gql.dart';
import 'package:botsta_app/graphql/create_chatroom_group.req.gql.dart';
import 'package:botsta_app/graphql/create_chatroom_single.req.gql.dart';
import 'package:botsta_app/graphql/login.req.gql.dart';
import 'package:botsta_app/graphql/message-subscription.data.gql.dart';
import 'package:botsta_app/graphql/message-subscription.req.gql.dart';
import 'package:botsta_app/graphql/message-subscription.var.gql.dart';
import 'package:botsta_app/graphql/post-message.req.gql.dart';
import 'package:botsta_app/graphql/register_user.req.gql.dart';
import 'package:botsta_app/graphql/who_am_i.req.gql.dart';
import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/logic/bloc/message_bloc.dart';
import 'package:botsta_app/logic/cubit/logged_in_user_cubit.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/models/message.dart';
import 'package:botsta_app/models/chat_practicant.dart';
import 'package:botsta_app/services/secure_storage_service.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:botsta_app/utils/extentions/graphql_extentions.dart';
import 'package:provider/provider.dart';

import '../startup.dart';

class BotstaApiClient {
  Future<bool> loginUserAsync(String username, String password) async {
    var secureStorage = getIt.get<SecureStorageService>();
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(GLoginReq((b) => b
      ..vars.name = username
      ..vars.secret = password));
    await client.dispose();
    if (!res.hasErrors &&
        res.data != null &&
        res.data?.login != null &&
        !res.data!.login!.hasError) {
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

  Future<bool> regiserUserAsync(String username, String password) async {
    var secureStorage = getIt.get<SecureStorageService>();
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(GRegisterUserReq((b) => b
      ..vars.username = username
      ..vars.password = password));
    await client.dispose();
    if (!res.hasErrors &&
        res.data != null &&
        res.data?.register != null &&
        !res.data!.register!.hasError) {
      var token = res.data!.register!.token;
      var refreshToken = res.data!.register!.refreshToken;
      secureStorage.setToken(token);
      secureStorage.setRefreshToken(refreshToken);
      return true;
    } else {
      secureStorage.setToken(null);
      secureStorage.setRefreshToken(null);
      return false;
    }
  }

  Future<ChatPracticant?> getLoggedInUserAsync() async {
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(GWhoAmIReq());
    if (!res.hasErrors &&
        res.data?.whoami != null &&
        res.data!.whoami!.isUser) {
      var data = res.data!.whoami;
      return new ChatPracticant(data!.id, data.name, false);
    }

    return null;
  }

  Future<Iterable<Chatroom>?> getChatroomsAsync() async {
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(GGetChatroomsReq());
    await client.dispose();

    if (res.data?.chatrooms != null) {
      return res.data!.chatrooms!.map((c) {
        var latestMessageData = c.latestMessage;
        Message? latestMessage;
        if (latestMessageData != null) {
          var messageItem = _decodeMessageItem(latestMessageData.message);
          latestMessage = Message(
              latestMessageData.id,
              messageItem,
              latestMessageData.senderId,
              c.id,
              DateTime.parse(latestMessageData.sendTime.value),
              _userIsMe(latestMessageData.senderId));
        }
        var chatroom = Chatroom(c.id, c.name!, latestMessage);
        return chatroom;
      });
    }

    return null;
  }

  Future<Chatroom> crateChatroomSingleAsync(String practicantId) async {
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(
        GCreateChatroomSingleReq((b) => b.vars..practicantId = practicantId));
    await client.dispose();

    if (res.hasErrors || res.data?.newChatroomSingle == null) {
      throw Exception();
    }

    var data = res.data!.newChatroomSingle!;
    return Chatroom(data.id, data.name!);
  }

  Future<Chatroom> crateChatroomGroupAsync(String groupName, List<String> practicantIds) async {
    var client = await getIt.getAsync<Client>();
    var request = GCreateChatroomGroupReq((b) => b.vars..name = groupName..practicantIds.addAll(practicantIds));
    var res = await client.requestFirst(
        request);
    await client.dispose();

    if (res.hasErrors || res.data?.newChatroomGroup == null) {
      throw Exception();
    }

    var data = res.data!.newChatroomGroup!;
    return Chatroom(data.id, data.name!);
  }

  Future<Iterable<ChatPracticant>> getAllUsersAsync(
      [bool includeMe = false]) async {
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(GGetAllChatPracticantsReq());
    if (res.hasErrors || res.data?.allChatPracticants == null) {
      throw Exception();
    }
    await client.dispose();
    var ret = res.data!.allChatPracticants!
        .map((c) => ChatPracticant(c.id, c.name, c.isBot));
    if (!includeMe) {
      var userCubit = getIt.get<LoggedInUserCubit>();
      var userId = userCubit.state.loggedInUser!.id;
      ret = ret.where((u) => u.id != userId);
    }
    return ret;
  }

  Future<Iterable<Message>?> getMessagesAsync(String chatroomId) async {
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(
        GGetChatroomMessagesReq((b) => b..vars.chatroomId = chatroomId));
    await client.dispose();

    if (res.data?.chatroom?.messages != null) {
      var chatroomId = res.data!.chatroom!.id;
      return res.data!.chatroom!.messages!.map((m) => Message(
          m.id,
          _decodeMessageItem(m.message),
          m.senderId,
          chatroomId,
          DateTime.parse(m.sendTime.value),
          _userIsMe(m.senderId)));
    }
    return null;
  }

  Future<Message?> postMessageAsync(String chatroomId, String message) async {
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(GPostMessageReq((b) => b
      ..vars.chatroomId = chatroomId
      ..vars.message = message));
    await client.dispose();

    String? id = res.data?.postMessage?.id;
    if (id != null) {
      var senderId = res.data!.postMessage!.senderId;
      return Message(
        id,
        _decodeMessageItem(message),
        senderId,
        chatroomId,
        DateTime.now(),
        true,
      );
    }
    return null;
  }

  Future<StreamSubscription<dynamic>?> messageSubscription() async {
    var client = await getIt.getAsync<Client>();
    var secureStorage = getIt.get<SecureStorageService>();
    var refreshToken = await secureStorage.refreshToken;

    var ret = client
        .request(
            GMessageSubscriptionReq((b) => b..vars.refreshToken = refreshToken))
        .listen((event) {
      var data = event.data?.messageReceived;
      if (data != null) {
        var userCubit = getIt.get<LoggedInUserCubit>();
        var msg = Message(
            data.id,
            _decodeMessageItem(data.message),
            data.senderId,
            data.chatroomId,
            DateTime.parse(data.sendTime.value),
            data.senderId == userCubit.state.loggedInUser!.id);
        getIt.get<MessageBloc>().add(AppendMessageEvent(msg));
      }
    });

    return ret;
  }

  List<MessageItem> _decodeMessageItem(String data) {
    try {
      List<MessageItem> ret = [];

      var decoded = json.decode(data);
      for (var item in decoded) {
        ret.add(MessageItem.fromJson(item));
      }

      return ret;
    } catch (Exception) {
      return [MessageItem()..text = data];
    }
  }

  _userIsMe(String userId) {
    var userCubit = getIt.get<LoggedInUserCubit>();
    return userId == userCubit.state.loggedInUser!.id;
  }
}
