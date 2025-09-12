void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Uraraka Ochako',
    'power': 'Zero gravity',
    'isAlive': true,
  };

  final uravity = Hero.fromJson(rawJson);

  print(uravity);
}

//constructor
class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No is Alive found';

  @override
  String toString() {
    return '$name, $power ${isAlive ? 'Yes' : 'Nope'}';
  }
}
