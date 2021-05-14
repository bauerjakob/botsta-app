import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class BotstaTextField extends StatelessWidget {
  BotstaTextField({this.controller, this.hintText, this.leading, this.obsecureText = false});

  final TextEditingController? controller;
  final String? hintText;
  final Widget? leading;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
      decoration: BoxDecoration(
          color: context.theme().highlightColor,
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          leading != null ? Container(margin: EdgeInsets.only(right: 7), child: leading!) : SizedBox.shrink(),
          Expanded(
            child: TextField(
              controller: controller,
              obscureText: obsecureText,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
