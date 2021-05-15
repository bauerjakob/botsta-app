import 'package:botsta_app/models/chat_practicant.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class UserItem extends StatelessWidget {
  final ChatPracticant user;
  final Function onTap;
  const UserItem(this.user, {required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: context.theme().accentColor,
              radius: 27,
              child: Text(
                user.name.substring(0, 2).toUpperCase(),
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(width: 12),
            Text(
              user.name,
              style: context.textTheme().headline3,
            ),
            user.isBot
                ? Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                        color: context.theme().accentColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Bot',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
