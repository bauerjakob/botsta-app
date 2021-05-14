import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class BotstaButton extends StatelessWidget {
  final Widget? child;
  final Function? onTap;
  final Color? backgroundColor;

  BotstaButton({this.child, this.onTap, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor != null
            ? backgroundColor!
            : context.theme().accentColor,
        child: InkWell(
            borderRadius: BorderRadius.circular(20),
            child: child != null
                ? Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 13),
                    child: child!)
                : SizedBox.shrink(),
            onTap: () {
              if (onTap != null) {
                onTap!();
              }
            }),
      ),
    );
  }
}
