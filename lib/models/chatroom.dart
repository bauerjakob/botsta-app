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
}