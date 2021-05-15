import 'package:botsta_app/logic/bloc/all_users_bloc.dart';
import 'package:botsta_app/logic/bloc/chatroom_bloc.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/startup.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class NewChatSingleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getIt.get<AllUsersBloc>().add(LoadAllUsersEvent());
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            FullscreenModalTitle(title: 'Select your practicant'),
            SizedBox(height: 20),
            Expanded(
              child: BlocBuilder<AllUsersBloc, AllUsersState>(
                builder: (context, state) {
                  if (state is AllUsersLoadingState) {
                    return LoadingIndicator();
                  }
                  if (state is AllUsersErrorState) {
                    return Text(context.translate('CREATE_CHATROOM.SINGLE.unknown_error'), style: context.textTheme().headline2);
                  }
                  if (state is AllUsersSuccessState) {
                    return ListView.builder(
                        physics: BouncingScrollPhysics(),
                        controller: ModalScrollController.of(context),
                        itemCount: state.users.length,
                        itemBuilder: (item, index) {
                          var user = state.users[index];
                          return Container(
                            child: UserItem(
                              user,
                              onTap: () async {
                                context.navigator().pop();
                                await getIt.get<ChatroomBloc>().crateChatroom(user.id);
                              },
                            ),
                          );
                        });
                  }
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
