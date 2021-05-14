import 'package:botsta_app/models/user.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class UserItem extends StatelessWidget {
  final User user;
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
              child: Text(user.name.substring(0, 2).toUpperCase(),
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            SizedBox(width: 12),
            Text(
              user.name,
              style: context.textTheme().headline3,
            )
          ],
        ),
      ),
    );
  }
}
