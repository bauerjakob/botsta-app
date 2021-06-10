part of 'own_bots_bloc.dart';

abstract class OwnBotsEvent extends Equatable {
  const OwnBotsEvent();

  @override
  List<Object> get props => [];
}


class LoadBotsEvent extends OwnBotsEvent {

}

class AddBotEvent extends OwnBotsEvent {
  final Bot bot;
  const AddBotEvent(this.bot);
}