import 'package:botsta_app/logic/bloc/message_bloc.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extentions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class InputBar extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();
  final String chatroomId;
  InputBar(this.chatroomId);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 7, left: 15, right: 15),
        child: Row(children: [
          IconButton(
            icon: Icon(Icons.emoji_emotions_outlined), // package: https://pub.dev/packages/emoji_picker/example
            padding: EdgeInsets.symmetric(horizontal: 10),
            onPressed: () {
            },
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: context.translate('CHAT.hintText')),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            padding: EdgeInsets.symmetric(horizontal: 10),
            onPressed: () async {
              var message = _textEditingController.text.trim();
              if (message.isNotEmpty) {
                await context.read<MessageBloc>().postMessageAsync(chatroomId,message);
                _textEditingController.clear();
              }
            },
          )
        ]),
      ),
    );
  }
}
