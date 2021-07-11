import 'package:botsta_app/services/sqlite_service.dart';
import 'package:botsta_app/startup.dart';

import 'message.dart';
import './chatroom_type.dart';

class Chatroom {
  Chatroom(this.id, this.name, this.type, [this.latestMessage]);
  final String id;
  final String name;
  Message? latestMessage;
  ChatroomType type;

  Chatroom clone() {
    return Chatroom(id, name, type, latestMessage?.clone());
  }

  static Future<Chatroom> fromMapAsync(Map<String, dynamic> data) async
  {
    var sqliteService = await getIt.getAsync<SqliteService>();

    var id = data['id'];
    var name = data['name'];
    var latestMessageId = data['latestMessageId'];
    bool isGroup = data['isGroup'];

    var message = await sqliteService.getMessageAsync(latestMessageId);

    return Chatroom(id, name, isGroup ? ChatroomType.Group : ChatroomType.Single, message);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'latestMessage': latestMessage?.rawMessage,
      'isGroup': type == ChatroomType.Group
    };
  }

}