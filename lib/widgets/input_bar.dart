import 'package:botsta_app/logic/bloc/message_bloc.dart';
import 'package:botsta_app/widgets/botsta_text_field.dart';
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
                  child: BotstaTextField(
                    controller: _textEditingController,
                    hintText: context.translate('CHAT.hint_text'),
                    leading: Icon(
                      Icons.emoji_emotions_outlined
                    ), // package: https://pub.dev/packages/emoji_picker/example
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
