class Bot {
  const Bot(this.id, this.name, this.isPublic);  
  
  final String id;
  final String name;
  final bool isPublic;

  Bot clone() {
    return Bot(id, name, isPublic);
  }

  Bot.fromMap(Map<String, dynamic> data)
    : id = data['id'],
    name = data['name'],
    isPublic = data['isPublic'] == 1;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'isPublic': isPublic ? 1 : 0
    };
  }

}