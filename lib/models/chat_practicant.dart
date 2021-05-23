class ChatPracticant {
  const ChatPracticant(this.id, this.name, this.isBot);
  final String id;
  final String name;
  final bool isBot;

  ChatPracticant clone() {
    return new ChatPracticant(id, name, isBot);
  }
}