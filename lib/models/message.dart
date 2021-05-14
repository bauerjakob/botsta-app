class Message {
  Message(this.id, this.text, this.senderId, this.chatroomId, this.sendTime, this.senderIsMe);
  
  String id;
  String text;
  String senderId;
  String chatroomId;
  DateTime sendTime;
  bool senderIsMe;

  Message clone() {
    return Message(id, text, senderId, chatroomId, sendTime, senderIsMe);
  }
}