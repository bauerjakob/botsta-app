import 'package:botsta_app/models/chat_practicant.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class SelectedPracticantItem extends StatelessWidget {
  SelectedPracticantItem(this.chatPracticant, {required this.onRemoveClicked});

  final ChatPracticant chatPracticant;
  final Function onRemoveClicked;

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
          height: radius * 2,
          margin: EdgeInsets.only(left: radius * 2 - radius / 2 - 10 / 2),
          padding: EdgeInsets.only(
            top: 5,
            bottom: 5,
            right: 10,
            left: 10 + radius / 2,
          ),
          decoration: BoxDecoration(
            color: context.theme().highlightColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Row(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  chatPracticant.name,
                ),
              ),
              InkWell(
                onTap: () => onRemoveClicked(),
                borderRadius: BorderRadius.circular(
                  20,
                ),
                child: Icon(
                  Icons.close,
                  size: 24,
                ),
              )
            ],
          ),
        ),
        avatar,
      ],
    );
  }
}
