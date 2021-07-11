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

  Chatroom.fromMap(Map<String, dynamic> data)
    : id = data['id'],
    name = data['name'],
    type = (data['isGroup'] == 1) ? ChatroomType.Group : ChatroomType.Single;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'isGroup': type == ChatroomType.Group ? 1 : 0
    };
  }

}