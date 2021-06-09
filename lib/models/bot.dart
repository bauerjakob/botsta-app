class Bot {
  const Bot(this.id, this.name, this.isPrivate);  
  
  final String id;
  final String name;
  final bool isPrivate;

  Bot clone() {
    return Bot(id, name, isPrivate);
  }

}