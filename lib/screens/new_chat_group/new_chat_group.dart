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

class NewChatGroupScreen extends StatefulWidget {
  @override
  _NewChatGroupScreenState createState() => _NewChatGroupScreenState();
}

class _NewChatGroupScreenState extends State<NewChatGroupScreen> {
  List<ChatPracticant> _selectedPracticants = [];

  void _toggleSelectedPracticant(ChatPracticant practicant) {
    setState(() {
      if (_selectedPracticants.contains(practicant)) {
        _selectedPracticants.remove(practicant);
      } else {
        _selectedPracticants.add(practicant);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          FullscreenModalTitle(title: 'Select your practicants'),
          Expanded(
            child: BlocBuilder<AllUsersBloc, AllUsersState>(
              builder: (context, state) {
                if (state is AllUsersLoadingState) {
                  return LoadingIndicator();
                }
                if (state is AllUsersErrorState) {
                  return Text(
                      context.translate('CREATE_CHATROOM.SINGLE.unknown_error'),
                      style: context.textTheme().headline2);
                }
                if (state is AllUsersSuccessState) {
                  return Column(
                    children: [
                      _selectedPracticants.length > 0
                          ? Column(
                              children: [
                                SizedBox(
                                  height: 70,
                                  child: ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: _selectedPracticants.length,
                                    itemBuilder: (context, index) {
                                      var practicant =
                                          _selectedPracticants[index];
                                      return Container(
                                        margin: EdgeInsets.only(left: index == 0 ? 15 : 0, right: 15),
                                        child: SelectedPracticantItem(
                                          practicant,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 35,
                                    right: 35,
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Divider(),
                                ),
                              ],
                            )
                          : SizedBox.shrink(),
                      Expanded(
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            controller: ModalScrollController.of(context),
                            itemCount: state.users.length,
                            itemBuilder: (item, index) {
                              var user = state.users[index];
                              return Container(
                                child: UserItem(
                                  user,
                                  onTap: () async {
                                    _toggleSelectedPracticant(user);
                                  },
                                  selected: _selectedPracticants.contains(user),
                                ),
                              );
                            }),
                      ),
                    ],
                  );
                }
                return Container();
              },
            ),
          ),
        ]),
      ),
    );
  }
}
