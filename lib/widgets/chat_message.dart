import 'package:botsta_app/logic/bloc/message_bloc.dart';
import 'package:botsta_app/models/message.dart';
import 'package:botsta_app/startup.dart';
import 'package:botsta_app/widgets/chat_message_card.dart';
import 'package:botsta_app/widgets/chat_message_text.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';
import 'package:botsta_app/utils/extentions/datetime_extentions.dart';
import 'package:url_launcher/url_launcher.dart';

class ChatMessage extends StatelessWidget {
  final Message message;

  const ChatMessage(this.message);

  List<Widget> _mergeMessageItems(BuildContext context) {
    final textColor =
        message.senderIsMe ? Colors.white : context.theme().primaryColor;

    List<Widget> ret = [];
    message.items.forEach(
      (msg) {
        if (msg.title != null && msg.title!.trim().isNotEmpty) {
          ret.add(
            Text(
              msg.title!.trim(),
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          );
        }

        if (msg.subtitle != null && msg.subtitle!.trim().isNotEmpty) {
          ret.add(
            Text(
              msg.subtitle!.trim(),
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          );
        }

        if (msg.text != null && msg.text!.trim().isNotEmpty) {
          ret.add(
            Text(
              msg.text!.trim(),
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        }

        if (msg.button != null && msg.button!.label.trim().isNotEmpty) {
          ret.add(
            BotstaButton(
              onTap: () async {
                var postback = msg.button!.postback?.trim();
                var url = msg.button!.url?.trim();
                if (postback != null && postback.isNotEmpty) {
                  await getIt.get<MessageBloc>().postMessageAsync(message.chatroomId, postback);
                }
                else if (msg.button!.url != null && url!.isNotEmpty) {
                  await launch(url);
                }
              },
              backgroundColor: message.senderIsMe
                  ? context.theme().primaryColor
                  : context.theme().accentColor,
              child: Text(
                msg.button!.label,
                style: context.textTheme().subtitle2,
              ),
            ),
          );
        }
      },
    );

    return ret
        .map(
          (w) => Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: w,
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          message.senderIsMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: message.senderIsMe
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: [
              Container(
                constraints:
                    BoxConstraints(maxWidth: context.screenWidth() * 0.75),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: message.senderIsMe
                      ? context.theme().accentColor
                      : context.theme().highlightColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _mergeMessageItems(context),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  message.sendTime
                      .toTimeString(context.translate('DATETIME.time_format')),
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
