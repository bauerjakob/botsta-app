import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final Chatroom chatroom;

  const ChatScreen(this.chatroom);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chatroom.name!),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: Container()),
            InputBar()
          ]
        ),
      ),
    );
  }
}