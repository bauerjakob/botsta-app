import 'package:botsta_app/logic/bloc/message_bloc.dart';

class Message {
  Message(this.id, this.items, this.senderId, this.chatroomId, this.sendTime, this.senderIsMe);
  
  String id;
  List<MessageItem> items;
  String senderId;
  String chatroomId;
  DateTime sendTime;
  bool senderIsMe;

  Message clone() {
    return Message(id, this.items, senderId, chatroomId, sendTime, senderIsMe);
  }
}

class MessageItem {
  MessageItem();

  String? title;
  String? subtitle;
  String? text;
  MessageButton? button;

  MessageItem.fromJson(Map<String, dynamic> data) :
    title = data['title'],
    subtitle = data['subtitle'],
    text = data['text'],
    button = data['button'] != null ? MessageButton.fromJson(data['button']) : null;
}

class MessageButton {
  MessageButton(this.label);
  final String label;
  String? postback;
  String? url;

  MessageButton.fromJson(Map<String, dynamic> data) :
    label = data['label'],
    postback = data['postback'],
    url = data['url'];

}