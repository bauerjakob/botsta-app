import 'package:botsta_app/logic/bloc/all_users_bloc.dart';
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
            Padding(
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
                      constraints: BoxConstraints(
                          maxWidth: context.screenWidth() * 0.75),
                      child: Text('Select your practicant',
                          style: context.textTheme().headline1)),
                  IconButton(
                    icon: Icon(Icons.close,
                        size: 35, color: context.theme().primaryColor),
                    onPressed: () => context.navigator().pop(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: BlocBuilder<AllUsersBloc, AllUsersState>(
                builder: (context, state) {
                  if (state is AllUsersLoadingState) {
                    return Align(alignment: Alignment.topCenter,child: CircularProgressIndicator(),);
                  }
                  if (state is AllUsersSuccessState) {
                    return ListView.builder(
                        controller: ModalScrollController.of(context),
                        itemCount: state.users.length,
                        itemBuilder: (item, index) {
                          return Container(
                            child: UserItem(
                              state.users[index],
                              onTap: () {
                                context.navigator().pop();
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
