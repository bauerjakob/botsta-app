part of 'graphql_bloc.dart';

abstract class GraphqlState extends Equatable {
  
  final List<Chatroom> chatrooms;

  const GraphqlState({required this.chatrooms});
  
  @override
  List<Object> get props => [];
}

class GraphqlInitial extends GraphqlState {
  GraphqlInitial() : super(chatrooms: []);
}
