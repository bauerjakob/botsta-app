import 'package:botsta_app/models/chat_practicant.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class SelectedPracticantItem extends StatelessWidget {
  SelectedPracticantItem(this.chatPracticant);

  final ChatPracticant chatPracticant;

  @override
  Widget build(BuildContext context) {
    CircleAvatar avatar = CircleAvatar(
      backgroundColor: context.theme().accentColor,
      radius: 20,
      child: Text(
        chatPracticant.name.substring(0, 2).toUpperCase(),
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );

    var radius = avatar.radius ?? 0;

    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          margin: EdgeInsets.only(left: radius * 2 - radius / 2),
          padding: EdgeInsets.only(
            top: 5,
            bottom: 5,
            right: 10,
            left: 7 + radius / 2,
          ),
          decoration: BoxDecoration(
            color: context.theme().highlightColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Text(
            chatPracticant.name,
          ),
        ),
        avatar,
      ],
    );
  }
}
