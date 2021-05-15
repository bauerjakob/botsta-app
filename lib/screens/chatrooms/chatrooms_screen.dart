import 'package:botsta_app/logic/bloc/chatroom_bloc.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class ChatroomsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatroomBloc, ChatroomState>(
        builder: (context, state) {
          if (state is ChatroomLoadingState) {
            return LoadingIndicator();
          }
          else if (state is ChatroomErrorState) {
            return Text(context.translate('CHATROOMS.unknown_error'), style: context.textTheme().headline2);
          }
          else if (state is ChatroomSuccessState) {
            return ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: state.chatrooms.length,
              itemBuilder: (context, index) {
                var chatroom = state.chatrooms[index];
                return ChatroomItem(chatroom);
              },
            );
          }
          return Container();
        },
      );
  }
}