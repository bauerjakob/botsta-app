import 'package:botsta_app/models/chatroom.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/config/routes/routes_config.dart';


class ChatroomItem extends StatelessWidget {
  final Chatroom chatroom;

  const ChatroomItem(this.chatroom);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        RoutesConfig.ROUTER.navigateTo(
          context,
          '/chat',
          routeSettings: RouteSettings(
            arguments: chatroom,
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(children: [
          CircleAvatar(
            radius: 27,
            child: Text(chatroom.name!.substring(0, 2)),
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(chatroom.name!),
              Text(chatroom.latestMessage!),
            ],
          )
        ]),
      ),
    );
  }
}
