class ChatPracticant {
  const ChatPracticant(this.id, this.name, this.isBot);
  final String id;
  final String name;
  final bool isBot;

  ChatPracticant clone() {
    return new ChatPracticant(id, name, isBot);
  }

  ChatPracticant.fromMap(Map<String, dynamic> data)
    : id = data['id'],
      name = data['name'],
      isBot = data['isBot'] == 1;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'isBot': isBot ? 1 : 0
    };
  }
}