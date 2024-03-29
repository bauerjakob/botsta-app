part of 'message_bloc.dart';

class MessageState extends Equatable {
  final Map<String, List<Message>?> messages;
  const MessageState(this.messages);
  
  @override
  List<Object> get props => [messages];
}

class MessageInitial extends MessageState {
  MessageInitial() : super(Map());
}
