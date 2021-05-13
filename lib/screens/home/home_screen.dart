import 'package:botsta_app/config/routes/routes_config.dart';
import 'package:botsta_app/logic/bloc/chatroom_bloc.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extentions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          context.translate('HOME.title'),
          style: context.textTheme().headline1,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              bottom: 10,
              top: 10,
              right: 25,
            ),
            width: 58,
            child: Material(
              color: context.theme().accentColor,
              borderRadius: BorderRadius.circular(13),
              child: InkWell(
                borderRadius: BorderRadius.circular(13),
                child: Icon(
                  Icons.add,
                  size: 30,
                ),
                onTap: () {},
              ),
            ),
          ),
          // IconButton(
          //   icon: Icon(Icons.settings, color: Colors.black,),
          //   onPressed: () {
          //     RoutesConfig.ROUTER.navigateTo(
          //     context,
          //     '/settings',
          //   );
          //   },
          // ),
        ],
      ),
      body: BlocBuilder<ChatroomBloc, ChatroomState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.chatrooms?.length ?? 0,
            itemBuilder: (context, index) {
              var chatroom = state.chatrooms![index];
              return ChatroomItem(chatroom);
            },
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {},
      //   tooltip: 'Add contact',
      // ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            label: 'Chats',
            icon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            label: 'Bots',
            icon: Icon(Icons.android_outlined),
          ),
          BottomNavigationBarItem(
              label: 'Settings', icon: Icon(Icons.settings)),
        ],
      ),
    );
  }
}
