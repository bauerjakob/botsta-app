part of 'own_bots_bloc.dart';

abstract class OwnBotsState extends Equatable {
  const OwnBotsState();
  
  @override
  List<Object> get props => [];
}

class OwnBotsInitial extends OwnBotsState {

}

class OwnBotsSuccess extends OwnBotsState {
  final List<Bot> bots;

  const OwnBotsSuccess(this.bots);
}

class OwnBotsLoading extends OwnBotsState {

}

class OwnBotsError extends  OwnBotsState {

}
