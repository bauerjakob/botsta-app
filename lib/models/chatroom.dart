import 'message.dart';

class Chatroom {
  Chatroom(this.id, this.name, [this.latestMessage]);
  final String id;
  final String name;
  Message? latestMessage;
}