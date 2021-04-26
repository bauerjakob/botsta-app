import 'package:botsta_app/models/message.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extentions.dart';

class ChatMessage extends StatelessWidget {

  final Message message;

  const ChatMessage(this.message);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: message.senderIsMe! ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: context.screenWidth() * 0.75),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: context.theme().primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(message.text!),
        ),
      ],
    );
  }
}