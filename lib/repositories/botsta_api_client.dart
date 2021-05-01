import 'package:botsta_app/constants/constants.dart';
import 'package:botsta_app/graphql/chatrooms.data.gql.dart';
import 'package:botsta_app/graphql/chatrooms.req.gql.dart';
import 'package:botsta_app/graphql/login.req.gql.dart';
import 'package:botsta_app/logic/bloc/authentication_bloc.dart';
import 'package:botsta_app/logic/bloc/graphql_bloc.dart';
import 'package:botsta_app/models/authentication_state.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/services/secure_storage_service.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:botsta_app/utils/extentions/graphql_extentions.dart';

import '../startup.dart';

class BotstaApiClient {

  Future<bool> loginUserAsync(String username, String password) async {
    var secureStorage = getIt.get<SecureStorageService>();
    var client = await getIt.getAsync<Client>();
    var res = await client.requestFirst(GLoginReq((b) => b..vars.name = username..vars.secret = password));
    client.dispose();
    await client.dispose();
    if (!res.hasErrors && res.data != null && res.data?.login != null) {
      secureStorage.setJwtToken(res.data?.login);
      return true;
    } else {
      secureStorage.setJwtToken(null);
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

}
