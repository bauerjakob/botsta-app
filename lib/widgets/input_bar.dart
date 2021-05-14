import 'package:botsta_app/logic/bloc/message_bloc.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputBar extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();
  final String chatroomId;
  InputBar(this.chatroomId);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 7, left: 25, right: 25),
        child: Row(children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.only(left: 5, right: 10, top: 3, bottom: 3),
                    decoration: BoxDecoration(
                        color: context.theme().highlightColor,
                        // border: Border.all(),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons
                              .emoji_emotions_outlined), // package: https://pub.dev/packages/emoji_picker/example
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          color: context.theme().primaryColor,
                          onPressed: () {},
                        ),
                        Expanded(
                          child: TextField(
                            controller: _textEditingController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: context.translate('CHAT.hintText')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Material(
              color: context.theme().accentColor,
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 13),
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                onTap: () async {
                  var message = _textEditingController.text.trim();
                  if (message.isNotEmpty) {
                    await context
                        .read<MessageBloc>()
                        .postMessageAsync(chatroomId, message);
                    _textEditingController.clear();
                  }
                },
              ),
            ),
          )
        ]),
      ),
    );
  }
}
