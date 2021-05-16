import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class ChatMessageCard extends StatelessWidget {
  final bool senderIsMe = false;

  @override
  Widget build(BuildContext context) {
    final textColor = senderIsMe ? Colors.white : context.theme().primaryColor;

    return Container(
      constraints: BoxConstraints(maxWidth: context.screenWidth() * 0.75),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: senderIsMe
            ? context.theme().accentColor
            : context.theme().highlightColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Comon Log In',
            style: senderIsMe
                ? context.textTheme().headline5
                : context.textTheme().headline4,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Here are somei',
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // BotstaButton(
          //   backgroundColor: senderIsMe
          //       ? context.theme().primaryColor
          //       : context.theme().accentColor,
          //   child: Text(
          //     'Login',
          //     style: context.textTheme().subtitle2,
          //   ),
          // ),
          //  SizedBox(
          //   height: 10,
          // ),
          // BotstaButton(
          //   backgroundColor: senderIsMe
          //       ? context.theme().primaryColor
          //       : context.theme().accentColor,
          //   child: Text(
          //     'Register',
          //     style: context.textTheme().subtitle2,
          //   ),
          // ),
        ],
      ),
    );
  }
}
