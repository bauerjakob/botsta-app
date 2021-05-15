import 'package:botsta_app/logic/bloc/message_bloc.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/models/message.dart';
import 'package:botsta_app/widgets/chat_message.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatelessWidget {
  final Chatroom chatroom;

  ChatScreen(this.chatroom);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            size: 35,
            color: context.theme().primaryColor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        foregroundColor: Colors.black,
        title: Text(
          chatroom.name,
          style: context.textTheme().headline2,
        ),
        backgroundColor: context.theme().highlightColor,
        elevation: 0,
      ),
      backgroundColor: context.theme().highlightColor,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          decoration: BoxDecoration(
            color: context.theme().scaffoldBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                  child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: BlocBuilder<MessageBloc, MessageState>(
                    builder: (context, state) {
                      return ListView.builder(
                          physics: BouncingScrollPhysics(),
                          reverse: true,
                          itemCount: state.messages[chatroom.id]?.length ?? 0,
                          itemBuilder: (context, item) {
                            var message = state.messages[chatroom.id]![item];
                            return ChatMessage(message);
                          });
                    },
                  ),
                ),
              )),
              InputBar(chatroom.id),
            ],
          ),
        ),
      ),
    );
  }
}
