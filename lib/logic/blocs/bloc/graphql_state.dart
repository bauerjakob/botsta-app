part of 'graphql_bloc.dart';

abstract class GraphqlState extends Equatable {
  
  final List<Chatroom> chatrooms;

  const GraphqlState({required this.chatrooms});
  
  @override
  List<Object> get props => [];
}

class GraphqlInitial extends GraphqlState {
  GraphqlInitial() : super(chatrooms: [
    Chatroom()..id = '1234-12234-1234-1234'..latestMessage = 'hello world'..name='Benchen',
    Chatroom()..id = '1234-12234-1234-1234'..latestMessage = 'hello world'..name='Jeley Menster',
    Chatroom()..id = '1234-12234-1234-1234'..latestMessage = 'hello world'..name='MrBomsta123'
  ]);
}
