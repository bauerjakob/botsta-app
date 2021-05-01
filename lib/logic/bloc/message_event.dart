part of 'message_bloc.dart';

abstract class MessageEvent extends Equatable {
  const MessageEvent();

  @override
  List<Object> get props => [];
}

class UpdateMessageEvent extends MessageEvent {
  final String chatroomId;

  const UpdateMessageEvent(this.chatroomId);

  @override
  List<Object> get props => [chatroomId];
}
