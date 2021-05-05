part of 'message_bloc.dart';

abstract class MessageEvent extends Equatable {
  const MessageEvent();

  @override
  List<Object> get props => [];
}

class InitialMessageEvent extends MessageEvent { }

class AppendMessageEvent extends MessageEvent {
  final Message message;
  const AppendMessageEvent(this.message);

    @override
    List<Object> get props => [message];
}

class UpdateMessageEvent extends MessageEvent {
  final String chatroomId;

  const UpdateMessageEvent(this.chatroomId);

  @override
  List<Object> get props => [chatroomId];
}
