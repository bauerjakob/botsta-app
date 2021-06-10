class Bot {
  const Bot(this.id, this.name, this.isPublic);  
  
  final String id;
  final String name;
  final bool isPublic;

  Bot clone() {
    return Bot(id, name, isPublic);
  }

}