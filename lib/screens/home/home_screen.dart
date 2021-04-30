import 'package:botsta_app/config/routes/routes_config.dart';
import 'package:botsta_app/logic/bloc/graphql_bloc.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:botsta_app/utils/extentions/context_extentions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<GraphqlBloc>(
      create: (context) => GraphqlBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.translate('HOME.title')),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                RoutesConfig.ROUTER.navigateTo(
                context,
                '/settings',
              );
              },
            ),
          ],
        ),
        body: BlocBuilder<GraphqlBloc, GraphqlState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: state.chatrooms.length,
              itemBuilder: (context, index) {
                var chatroom = state.chatrooms[index];
                return ChatroomItem(chatroom);
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
          tooltip: 'Add contact',
        ),
      ),
    );
  }
}
