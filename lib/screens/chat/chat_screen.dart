import 'package:botsta_app/logic/bloc/message_bloc.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/models/message.dart';
import 'package:botsta_app/widgets/chat_message.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatelessWidget {
  final Chatroom chatroom;

  ChatScreen(this.chatroom);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chatroom.name),
      ),
      body: Container(
        child: Column(children: [
          Expanded(child: Container(
            child: BlocBuilder<MessageBloc, MessageState>(
              builder: (context, state) {
                return ListView.builder(
                    reverse: true,
                    itemCount: state.messages[chatroom.id]?.length ?? 0,
                    itemBuilder: (context, item) {
                      var message = state.messages[chatroom.id]![item];
                      return ChatMessage(message);
                    });
              },
            ),
          )),
          InputBar(chatroom.id)
        ]),
      ),
    );
  }
}
