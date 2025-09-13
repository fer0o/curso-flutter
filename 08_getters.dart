void main() {
  final mySquare = Square(side: 10);

  mySquare.side = -5;

  print('area ${mySquare.area}');
}

class Square {
  double _side;
  //side * side

  //cuando vemos el _ significa que es un valor privado
  //si es privado significa que solo atiende dentro de ese scope

  //   Square({ required this.side});

  //   double get area {
  //     return side * side;
  //   }
  //   double calculateArea(){
  //     return side * side;
  //   }

  Square({required double side}) : _side = side;

  double get area {
    return _side * _side;
  }

  //manejo de setter

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >=0';

    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
