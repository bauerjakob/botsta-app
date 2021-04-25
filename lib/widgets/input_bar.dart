import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:botsta_app/utils/extentions/context_extentions.dart';


class InputBar extends StatelessWidget {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 3
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: TextField(
                   controller: _textEditingController,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: context.translate('CHAT.hintText')
                   ),
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}