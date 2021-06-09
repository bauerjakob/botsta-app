import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:botsta_app/models/bot.dart';
import 'package:botsta_app/repositories/botsta_api_client.dart';
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
      try {
        var bots = await client.getOwnBotsAsync();
        yield OwnBotsLoaded(bots.toList());
      } catch (Exception) {
        yield OwnBotsError();
      }
    }
  }
}
