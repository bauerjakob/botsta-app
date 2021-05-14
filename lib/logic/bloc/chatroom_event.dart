part of 'chatroom_bloc.dart';

abstract class ChatroomEvent extends Equatable {
  const ChatroomEvent();

  @override
  List<Object> get props => [];
}

class InitialChatroomEvent extends ChatroomEvent {}
class ResetChatroomEvent extends ChatroomEvent {}

class AppendChatroomEvent extends ChatroomEvent {
  final Chatroom chatroom;
  const AppendChatroomEvent(this.chatroom);

  @override
  List<Object> get props => [this.chatroom];
}
class UpdateLatestChatroomMessageEvent extends ChatroomEvent {
  final Message message;

  const UpdateLatestChatroomMessageEvent(this.message);

  @override
  List<Object> get props => [this.message];
}