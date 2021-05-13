part of 'chatroom_bloc.dart';

abstract class ChatroomEvent extends Equatable {
  const ChatroomEvent();

  @override
  List<Object> get props => [];
}

class InitialChatroomEvent extends ChatroomEvent {}

class UpdateLatestChatroomMessageEvent extends ChatroomEvent {
  final Message message;

  const UpdateLatestChatroomMessageEvent(this.message);

  @override
  List<Object> get props => [this.message];
}