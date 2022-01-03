import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/models/bot.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
import 'package:botsta_app/services/sqlite_service.dart';
import 'package:equatable/equatable.dart';

import '../../startup.dart';

part 'own_bots_event.dart';
part 'own_bots_state.dart';

class OwnBotsBloc extends Bloc<OwnBotsEvent, OwnBotsState> {
  OwnBotsBloc() : super(OwnBotsInitial());

  @override
  Stream<OwnBotsState> mapEventToState(
    OwnBotsEvent event,
  ) async* {
    if (event is LoadBotsEvent) {
      var client = getIt.get<BotstaApiClient>();
      var sqliteService = getIt.get<SqliteService>();
      yield OwnBotsLoading();
      try {
        var bots = (await sqliteService.getOwnBotsAsync()).toList();
        yield OwnBotsSuccess(bots);
        bots = (await client.getOwnBotsAsync()).toList();
        yield OwnBotsSuccess(bots);
      } catch (e) {
        yield OwnBotsError();
      }
    }
    else if (event is AddBotEvent) {
      if (state is OwnBotsSuccess) {
        var bots = (state as OwnBotsSuccess).bots
          .map((b) => b.clone()).toList();
        
        bots.add(event.bot);

        yield (OwnBotsSuccess(bots));
      }
    }
  }
}
