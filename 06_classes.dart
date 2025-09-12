void main() {
  final deku = Hero(name: 'Deku', power: 'Smash');
  print(deku);
  print(deku.name);
  print(deku.power);
}

class Hero {
  //notnullable siempre tienen que tener un valor
  // si tienen ? significa que pueden ser opcionales
  String name;
  String power;
  Hero({required this.name, required this.power});

  //sobre escribe
  @override
  String toString() {
    return '$name - $power';
  }
}
