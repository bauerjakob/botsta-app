part of 'chatroom_bloc.dart';

class ChatroomState extends Equatable {
  final List<Chatroom>? chatrooms;

  const ChatroomState(this.chatrooms);
  
  @override
  List<Object> get props => [this.chatrooms ?? []];
}

class ChatroomInitial extends ChatroomState {
  ChatroomInitial() : super(null);
}
