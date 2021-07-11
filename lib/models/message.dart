import 'dart:convert';

import 'package:botsta_app/logic/bloc/message_bloc.dart';
import 'package:botsta_app/models/chat_practicant.dart';
import 'package:botsta_app/services/sqlite_service.dart';
import 'package:botsta_app/startup.dart';

class Message {
  Message(this.id, this.rawMessage, this.sender, this.chatroomId, this.sendTime, this.senderIsMe) {
    this.items = _decodeMessageItems(rawMessage);
  }
  
  String id;
  String rawMessage;
  late List<MessageItem> items;
  ChatPracticant sender;
  String chatroomId;
  DateTime sendTime;
  bool senderIsMe;

  Message clone() {
    return Message(id, rawMessage, sender.clone(), chatroomId, sendTime, senderIsMe);
  }

  static Future<Message> fromMapAsync(Map<String, dynamic> data) async {

      final id = data['id'];
      final rawMessage = data['message'];
      final chatroomId = data['chatroomId'];
      final sendTime = DateTime.fromMillisecondsSinceEpoch(data['sendTime']);
      final senderIsMe = data['senderIsMe'] == 1;
      final senderId = data['senderId'];

      final sqliteService = await getIt.getAsync<SqliteService>();
      final sender = await sqliteService.getChatPracticantAsync(senderId);

      return Message(id, rawMessage, sender!, chatroomId, sendTime, senderIsMe);
  }


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'senderId': sender.id,
      'chatroomId': chatroomId,
      'sendTime': sendTime.millisecondsSinceEpoch,
      'senderIsMe': senderIsMe ? 1 : 0,
      'message': rawMessage
    };
  }

  static List<MessageItem> _decodeMessageItems(String data) {
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