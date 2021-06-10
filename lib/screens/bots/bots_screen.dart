import 'package:botsta_app/logic/bloc/own_bots_bloc.dart';
import 'package:botsta_app/models/chat_practicant.dart';
import 'package:botsta_app/startup.dart';
import 'package:botsta_app/widgets/bot_item.dart';
import 'package:botsta_app/widgets/loading_indicator.dart';
import 'package:botsta_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:botsta_app/utils/extentions/context_extensions.dart';

class BotsScreen extends StatelessWidget {
  const BotsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getIt.get<OwnBotsBloc>().add(LoadBotsEvent());

    return BlocBuilder<OwnBotsBloc, OwnBotsState>(
      builder: (context, state) {
        if (state is OwnBotsSuccess) {
          return ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: state.bots.length,
            itemBuilder: (context, index) {
              var bot = state.bots[index];
              return BotItem(bot, onTap: () {});
            },
          );
        } else if (state is OwnBotsLoading) {
          return LoadingIndicator();
        } else {
          return Text(
            'Ohhhhh, an error occurred.',
            style: context.textTheme().subtitle2,
          );
        }
      },
    );
  }
}
