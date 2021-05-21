import 'package:botsta_app/logic/bloc/message_bloc.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/config/routes/routes_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';
import 'package:botsta_app/utils/extentions/datetime_extentions.dart';

class ChatroomItem extends StatelessWidget {
  final Chatroom chatroom;

  const ChatroomItem(this.chatroom);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<MessageBloc>()..add(UpdateMessageEvent(chatroom.id));
        RoutesConfig.ROUTER.navigateTo(
          context,
          '/chat',
          routeSettings: RouteSettings(
            arguments: chatroom,
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Row(children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: context.theme().accentColor,
                radius: 35,
                child: Text(chatroom.name.substring(0, 2).toUpperCase(),
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: context.theme().scaffoldBackgroundColor)),
              ),
              // Positioned(
              //   bottom: 0,
              //   right: 0,
              //   child: Container(
              //     height: 20,
              //     width: 20,
              //     padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
              //     decoration: BoxDecoration(
              //         shape: BoxShape.circle,
              //         border: Border.all(
              //           color: context.theme().scaffoldBackgroundColor,
              //           width: 3,
              //         ),
              //         color: context.theme().primaryColor),
              //   ),
              // ),
            ],
          ),
          SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chatroom.name,
                        style: context.textTheme().headline3,
                      ),
                      Text(
                        chatroom.latestMessage?.sendTime.toDateTimeString(context) ?? '',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    chatroom.latestMessage?.items[0].text ?? '',
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme().bodyText2,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
