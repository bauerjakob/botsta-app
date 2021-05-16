import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class ChatMessageText extends StatelessWidget {
  ChatMessageText(this.text, this.senderIsMe);
  final String text;
  final bool senderIsMe;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: context.screenWidth() * 0.75),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: senderIsMe
            ? context.theme().accentColor
            : context.theme().highlightColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color:
              senderIsMe ? Colors.white : context.theme().primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
