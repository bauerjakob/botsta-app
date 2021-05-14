import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class FullscreenModalTitle extends StatelessWidget {
  final String? title;

  FullscreenModalTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 15,
        left: 15,
        right: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              constraints:
                  BoxConstraints(maxWidth: context.screenWidth() * 0.75),
              child: Text(title ?? '', style: context.textTheme().headline1)),
          IconButton(
            icon: Icon(Icons.close,
                size: 35, color: context.theme().primaryColor),
            onPressed: () => context.navigator().pop(),
          ),
        ],
      ),
    );
  }
}
