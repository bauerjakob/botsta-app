import 'package:botsta_app/logic/bloc/all_users_bloc.dart';
import 'package:botsta_app/logic/bloc/chatroom_bloc.dart';
import 'package:botsta_app/models/chat_practicant.dart';
import 'package:botsta_app/widgets/selected_practicant_item.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

import '../../startup.dart';

class NewChatGroupScreen2 extends StatefulWidget {
  NewChatGroupScreen2(this.chatPracticants);

  List<ChatPracticant> chatPracticants;
  @override
  _NewChatGroupScreen2State createState() => _NewChatGroupScreen2State();
}

class _NewChatGroupScreen2State extends State<NewChatGroupScreen2> {
  TextEditingController _grouNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    BotstaFormTextField groupNameField;
    return Scaffold(
      body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(children: [
            FullscreenModalTitle(
              title: 'Group Settings',
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 25,
                ),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    groupNameField = BotstaFormTextField(
                      leading: Icon(
                        Icons.group,
                      ),
                      validateOnChange: true,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return false;
                        }
                        return true;
                      },
                      controller: _grouNameController,
                      hintText: 'Group name...',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BotstaButton(
                      child: Text(
                        'Create Group',
                        style: context.textTheme().subtitle2,
                      ),
                      onTap: () async {
                        if (!groupNameField.validate()) {
                          return;
                        }

                        var groupName = _grouNameController.text.trim();

                        var chatroomBloc = getIt.get<ChatroomBloc>();
                        await chatroomBloc.createChatroomGroupAsync(groupName, widget.chatPracticants.map((e) => e.id).toList());

                        context.navigator().pop();
                        context.navigator().pop();
                      },
                    ),
                  ],
                ),
              ),
            )
          ])),
    );
  }
}
