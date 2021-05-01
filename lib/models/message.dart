class Message {
  Message(this.id, this.text, this.senderId, this.chatroomId, this.senderIsMe);
  
  String id;
  String text;
  String senderId;
  String chatroomId;
  bool senderIsMe;
}