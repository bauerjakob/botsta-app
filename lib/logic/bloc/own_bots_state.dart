part of 'own_bots_bloc.dart';

abstract class OwnBotsState extends Equatable {
  const OwnBotsState();
  
  @override
  List<Object> get props => [];
}

class OwnBotsInitial extends OwnBotsState {

}

class OwnBotsLoaded extends OwnBotsState {
  final List<Bot> bots;

  const OwnBotsLoaded(this.bots);
}

class OwnBotsError extends  OwnBotsState {

}
