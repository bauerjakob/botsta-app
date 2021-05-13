import 'package:botsta_app/models/message.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';
import 'package:botsta_app/utils/extentions/datetime_extentions.dart';

class ChatMessage extends StatelessWidget {
  final Message message;

  const ChatMessage(this.message);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          message.senderIsMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: message.senderIsMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: context.screenWidth() * 0.75),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: message.senderIsMe
                      ? Color.fromRGBO(85, 123, 244, 1)
                      : Color.fromRGBO(234, 239, 253, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  message.text,
                  style: TextStyle(
                    color: message.senderIsMe
                        ? Colors.white
                        : context.theme().primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(message.sendTime.toTimeString(), style: TextStyle(fontSize: 13),),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
