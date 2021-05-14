part of 'chatroom_bloc.dart';

abstract class ChatroomState extends Equatable {
  @override
  List<Object> get props => [];
}

class ChatroomSuccessState extends ChatroomState {
  final List<Chatroom> chatrooms;
  ChatroomSuccessState(this.chatrooms);

  @override
  List<Object> get props => [this.chatrooms];
}

class ChatroomLoadingState extends ChatroomState {
  @override
  List<Object> get props => [];
}


class ChatroomErrorState extends ChatroomState {
  @override
  List<Object> get props => [];
}
class ChatroomInitial extends ChatroomState {
  ChatroomInitial() : super();
}
