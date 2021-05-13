import 'package:botsta_app/logic/bloc/chatroom_bloc.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatroomsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatroomBloc, ChatroomState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.chatrooms?.length ?? 0,
            itemBuilder: (context, index) {
              var chatroom = state.chatrooms![index];
              return ChatroomItem(chatroom);
            },
          );
        },
      );
  }
}