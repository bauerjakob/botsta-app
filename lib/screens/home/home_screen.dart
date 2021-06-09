import 'package:botsta_app/config/routes/routes_config.dart';
import 'package:botsta_app/logic/bloc/chatroom_bloc.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/screens/bots/bots_screen.dart';
import 'package:botsta_app/screens/chatrooms/chatrooms_screen.dart';
import 'package:botsta_app/screens/create_bot_screen/create_bot_screen1.dart';
import 'package:botsta_app/screens/new_chat_single/new_chat_single_screen.dart';
import 'package:botsta_app/screens/settings/settings_screen.dart';
import 'package:botsta_app/widgets/app_bar_action_button.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  var _currentPageIndex = 0;

  _pageChanged(int pageIndex) {
    setState(() {
      _currentPageIndex = pageIndex;
      _pageController.animateToPage(pageIndex,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  AppBar _getAppBar() {
    AppBarActionButton? action;
    String title = '';

    switch (_currentPageIndex) {
      case 0:
        title = context.translate('CHATROOMS.title');
        action = AppBarActionButton(
            Icon(
              Icons.add,
              size: 30,
            ), onTap: () {
          showCupertinoModalBottomSheet(
              expand: true,
              context: context,
              builder: (context) {
                return NewChatSingleScreen();
              });
        });
        break;
      case 1:
        title = context.translate('BOTS.title');
        action = AppBarActionButton(
            Icon(
              Icons.add,
              size: 30,
            ), onTap: () {
          showCupertinoModalBottomSheet(
              expand: true,
              context: context,
              builder: (context) {
                return CreateBotScreen();
              });
        });
        break;
      case 2:
        title = context.translate('SETTINGS.title');
        break;
    }

    return AppBar(
      centerTitle: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        title,
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
          child: action,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: PageView(
        controller: _pageController,
        physics: new NeverScrollableScrollPhysics(),
        children: [
          ChatroomsScreen(),
          BotsScreen(),
          SettingsScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _currentPageIndex,
        onTap: (index) {
          _pageChanged(index);
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(size: 30),
        unselectedIconTheme: IconThemeData(size: 25),
        items: [
          BottomNavigationBarItem(
            label: 'Chats',
            icon: Icon(
              Icons.chat,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Bots',
            icon: Icon(Icons.android_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
    );
  }
}
