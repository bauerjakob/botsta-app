import 'package:botsta_app/models/bot.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class BotItem extends StatelessWidget {
  final Bot bot;
  final Function onTap;

  const BotItem(this.bot, {required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundColor: context.theme().accentColor,
                  radius: 27,
                  child: Text(
                    bot.name.substring(0, 2).toUpperCase(),
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 12),
            Text(
              bot.name,
              style: context.textTheme().headline3,
            ),
            bot.isPublic
                ? SizedBox.shrink()
                : Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                        color: context.theme().accentColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Private',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
