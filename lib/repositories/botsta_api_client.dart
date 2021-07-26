import 'dart:async';

import 'package:botsta_app/graphql/all_chat_practicants.req.gql.dart';
import 'package:botsta_app/graphql/chatroom-messages.req.gql.dart';
import 'package:botsta_app/graphql/chatroom_key_exchange.req.gql.dart';
import 'package:botsta_app/graphql/chatrooms.req.gql.dart';
import 'package:botsta_app/graphql/create_bot.req.gql.dart';
import 'package:botsta_app/graphql/create_chatroom_group.req.gql.dart';
import 'package:botsta_app/graphql/create_chatroom_single.req.gql.dart';
import 'package:botsta_app/graphql/delete_messages.req.gql.dart';
import 'package:botsta_app/graphql/get_own_bots.req.gql.dart';
import 'package:botsta_app/graphql/login.req.gql.dart';
import 'package:botsta_app/graphql/logout.req.gql.dart';
import 'package:botsta_app/graphql/message-subscription.req.gql.dart';
import 'package:botsta_app/graphql/post-message.req.gql.dart';
import 'package:botsta_app/graphql/register_user.req.gql.dart';
import 'package:botsta_app/graphql/who_am_i.req.gql.dart';
import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/logic/bloc/message_bloc.dart';
import 'package:botsta_app/logic/cubit/logged_in_user_cubit.dart';
import 'package:botsta_app/models/bot.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/models/chatroom_type.dart';
import 'package:botsta_app/models/message.dart';
import 'package:botsta_app/models/chat_practicant.dart';
import 'package:botsta_app/services/e2ee_service.dart';
import 'package:botsta_app/services/secure_storage_service.dart';
import 'package:botsta_app/services/sqlite_service.dart';
import 'package:ferry/ferry.dart';
import 'package:botsta_app/utils/extentions/graphql_extentions.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart' as notifications;

import '../startup.dart';

class BotstaApiClient {
  Future<bool> loginUserAsync(String username, String password) async {
    var secureStorage = getIt.get<SecureStorageService>();
    var client = await getIt.getAsync<Client>();
    var e2eeService = getIt.get<E2EEService>();

    var publicKey = await e2eeService.generateKeyPairAsync();

    var res = await client.requestFirst(GLoginReq((b) => b
      ..vars.name = username
      ..vars.secret = password
      ..vars.publicKey = publicKey));
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
    var e2eeService = getIt.get<E2EEService>();

    var publicKey = await e2eeService.generateKeyPairAsync();

    var res = await client.requestFirst(GRegisterUserReq((b) => b
      ..vars.username = username
      ..vars.password = password
      ..vars.publicKey = publicKey));

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
  Future<String> registerBotAsync(String botName, bool isPublic) async {
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(GCreateBotReq((b) => b
      ..vars.botName = botName
      ..vars.isPublic = isPublic));
    await client.dispose();
    if (!res.hasErrors &&
        res.data != null) {
      return res.data!.registerBot!;
    } else {
      throw Exception();
    }
  }

  Future logoutAsync() async {
    var client = await getIt.getAsync<Client>();
    await client.requestFirst(GLogoutReq());
  }

  Future<Iterable<Bot>> getOwnBotsAsync() async {
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(GGetOwnBotsReq());
    await client.dispose();
    var bots = res.data?.getOwnBots;
    if (bots == null) {
      throw new Exception();
    }

    return bots.map((b) => Bot(b.id, b.name, b.isPublic));
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
    var sqliteService = await getIt.getAsync<SqliteService>();
    var e2eeService = getIt.get<E2EEService>();
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(GGetChatroomsReq());

    if (res.data?.chatrooms != null) {
      return await Future.wait(res.data!.chatrooms!.map((c) async {
        var latestMessageData = c.latestMessage;
        Message? latestMessage;
        if (latestMessageData != null && latestMessageData.sender != null) {
          var sender = latestMessageData.sender!;
          var decryptedMessage = await e2eeService.decrypMessageAsync(latestMessageData.message, latestMessageData.senderPublicKey);
          latestMessage = Message(
              latestMessageData.id,
              decryptedMessage,
              ChatPracticant(sender.id, sender.name, sender.isBot),
              c.id,
              DateTime.parse(latestMessageData.sendTime.value),
              _userIsMe(sender.id));

          await Future.wait([
            sqliteService.addMessageToDbAsync(latestMessage),
            client.requestFirst(GDeleteMessagesReq((b) => b..vars.messageIds.add(latestMessage!.id)))
          ]);

        } else {
          latestMessage = (await sqliteService.getLatestMessageAsync(c.id));
        }


        var chatroom = Chatroom(
            c.id,
            c.name!,
            c.type.toLowerCase() == "group"
                ? ChatroomType.Group
                : ChatroomType.Single,
            latestMessage);
        await sqliteService.addChatroomToDbAsync(chatroom);
        return chatroom;
      }));
    }

    await client.dispose();

    return null;
  }

  Future<Chatroom> crateChatroomSingleAsync(String practicantId) async {
    var client = await getIt.getAsync<Client>();
    var sqliteService = await getIt.getAsync<SqliteService>();
    var res = await client.requestFirst(
        GCreateChatroomSingleReq((b) => b.vars..practicantId = practicantId));
    await client.dispose();

    if (res.hasErrors || res.data?.newChatroomSingle == null) {
      throw Exception();
    }

    var data = res.data!.newChatroomSingle!;
    var chatroom =  Chatroom(data.id, data.name!, ChatroomType.Single);
    await sqliteService.addChatroomToDbAsync(chatroom);
    return chatroom;
  }

  Future<Chatroom> crateChatroomGroupAsync(
      String groupName, List<String> practicantIds) async {
    var client = await getIt.getAsync<Client>();
    var sqliteService = await getIt.getAsync<SqliteService>();

    var request = GCreateChatroomGroupReq((b) => b.vars
      ..name = groupName
      ..practicantIds.addAll(practicantIds));
    var res = await client.requestFirst(request);
    await client.dispose();

    if (res.hasErrors || res.data?.newChatroomGroup == null) {
      throw Exception();
    }

    var data = res.data!.newChatroomGroup!;
    var chatroom =  Chatroom(data.id, data.name!, ChatroomType.Group);
    await sqliteService.addChatroomToDbAsync(chatroom);
    return chatroom;
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
    var e2eeService = getIt.get<E2EEService>();
    var sqliteService = await getIt.getAsync<SqliteService>();

    var res = await client.requestFirst(
        GGetChatroomMessagesReq((b) => b..vars.chatroomId = chatroomId));


    if (res.data?.chatroom?.messages != null) {
      var messages =  res.data!.chatroom!.messages!.map((m) async {
        var sender = m.sender!;
        var decryptedMessage = await e2eeService.decrypMessageAsync(m.message, m.senderPublicKey);
        var chatPracticant = ChatPracticant(sender.id, sender.name, sender.isBot);

        var msg = Message(
            m.id,
            decryptedMessage,
            chatPracticant,
            m.chatroomId,
            DateTime.parse(m.sendTime.value),
            _userIsMe(sender.id));


        await sqliteService.addMessageToDbAsync(msg);

        return msg;
      });

      var ret =  await Future.wait(messages);
      var messageIds = ret.map((e) => e.id);
      await client.requestFirst((GDeleteMessagesReq((b) => b..vars.messageIds.addAll(messageIds))));

      await client.dispose();

      return ret;
    }
    return null;
  }

  Future<Map<String, String>> _chatroomKeyExchange(String chatroomId) async {
    var client = await getIt.getAsync<Client>();
    var authState = getIt.get<AuthenticationBloc>().state as AuthenticationStateAuthenticated;

    var res = await client.requestFirst(GChatroomKeyExchangeReq((b) => b
      ..vars.chatroomId = chatroomId));

    await client.dispose();

    if (res.hasErrors || res.data?.getChatPracticantsOfChatroom == null) {
      throw Exception();
    }

    var result = Map<String, String>();

    res.data!.getChatPracticantsOfChatroom!.forEach((chatPracticant) { 
      if (chatPracticant.keyExchange != null) {
        chatPracticant.keyExchange!.forEach((key) {
          if (key.sessionId != authState.sessionId) {
            result.putIfAbsent(key.sessionId, () => key.publicKey);
          }
        });
      }
    });

    return result;
  }

  Future postMessageAsync(String chatroomId, String message) async {
    var e2eeService = getIt.get<E2EEService>();

    var keyExchange = await _chatroomKeyExchange(chatroomId);

    var client = await getIt.getAsync<Client>();

    final List<Future<dynamic>> sendRequests = [];

    keyExchange.forEach((sessionId, publicKey) async {
      var encryptedMessage = await e2eeService.encryptMessageAsync(message, publicKey);
      var request = client.requestFirst(GPostMessageReq((b) => b
        ..vars.chatroomId = chatroomId
        ..vars.message = encryptedMessage
        ..vars.receiverSessionId = sessionId));
      sendRequests.add(request);
    });

    await Future.wait(sendRequests);

    await client.dispose();
  }

  Future<StreamSubscription<dynamic>?> messageSubscription() async {
    var client = await getIt.getAsync<Client>();
    var secureStorage = getIt.get<SecureStorageService>();
    var e2eeService = getIt.get<E2EEService>();
    var sqliteService = getIt.get<SqliteService>();
    var refreshToken = await secureStorage.refreshToken;

    var ret = client
        .request(
            GMessageSubscriptionReq((b) => b..vars.refreshToken = refreshToken))
        .listen((event) async {
      var data = event.data?.messageReceived;
      if (data != null && data.sender != null) {
        var sender = data.sender!;

        var decryptedMessage = await e2eeService.decrypMessageAsync(data.message, data.senderPublicKey);

        var msg = Message(
          data.id,
          decryptedMessage,
          ChatPracticant(sender.id, sender.name, sender.isBot),
          data.chatroomId,
          DateTime.parse(data.sendTime.value),
          _userIsMe(sender.id),
        );
        getIt.get<MessageBloc>().add(AppendMessageEvent(msg));

        await client.requestFirst(GDeleteMessagesReq((b) => b..vars.messageIds.add(msg.id)));

    //     const androidPlatformChannelSpecifics = notifications.AndroidNotificationDetails(
    //         'your channel id', 'your channel name', 'your channel description',
    //         importance: notifications.Importance.high,
    //         priority: notifications.Priority.high,
    //         ticker: 'ticker');
    // const platformChannelSpecifics =
    //     notifications.NotificationDetails(android: androidPlatformChannelSpecifics);
    //   await notifications.FlutterLocalNotificationsPlugin().show(
    //       0, msg.sender.name, msg.rawMessage, platformChannelSpecifics,
    //       payload: 'item x');
        }
    });

    return ret;
  }

  _userIsMe(String userId) {
    var userCubit = getIt.get<LoggedInUserCubit>();
    return userId == userCubit.state.loggedInUser!.id;
  }
}
