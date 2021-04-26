import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/models/message.dart';
import 'package:botsta_app/widgets/chat_message.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final Chatroom chatroom;

  ChatScreen(this.chatroom);

  final List<Message> messages = [
    Message()..text='Hello world first'..senderIsMe=true,
    Message()..text='Hello world'..senderIsMe=false,
    Message()..text='Hello world lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul'..senderIsMe=false,
    Message()..text='Hello world'..senderIsMe=true,
     Message()..text='Hello world'..senderIsMe=true,
    Message()..text='Hello world'..senderIsMe=false,
    Message()..text='Hello world lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul'..senderIsMe=false,
    Message()..text='Hello world'..senderIsMe=true,
     Message()..text='Hello world'..senderIsMe=true,
    Message()..text='Hello world'..senderIsMe=false,
    Message()..text='Hello world lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul'..senderIsMe=false,
    Message()..text='Hello world'..senderIsMe=true,
     Message()..text='Hello world'..senderIsMe=true,
    Message()..text='Hello world'..senderIsMe=false,
    Message()..text='Hello world lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul'..senderIsMe=false,
    Message()..text='Hello world'..senderIsMe=true,
     Message()..text='Hello world'..senderIsMe=true,
    Message()..text='Hello world'..senderIsMe=false,
    Message()..text='Hello world lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul'..senderIsMe=false,
    Message()..text='Hello world'..senderIsMe=true,
     Message()..text='Hello world'..senderIsMe=true,
    Message()..text='Hello world'..senderIsMe=false,
    Message()..text='Hello world lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul lul'..senderIsMe=false,
    Message()..text='Hello world'..senderIsMe=true,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chatroom.name!),
      ),
      body: Container(
        child: Column(children: [
          Expanded(
              child: Container(
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, item) {
              var message = messages[item];
              return ChatMessage(message);
            }),
          )),
          InputBar()
        ]),
      ),
    );
  }
}
