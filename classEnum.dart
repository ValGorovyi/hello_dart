import 'dart:math';

enum Colors { Red, Green, Ping, Blue, Black }

abstract class Shape {
  double get square;
  final Colors color;
  Shape(this.color);
  @override
  String toString() {
    return '$color, $square';
  }
}

class Rectangle extends Shape {
  final int sideA;
  final int sideB;
  final int sideC;
  Rectangle(this.sideA, this.sideB, this.sideC, Colors color) : super(color);
  @override
  // formula demonstrativna
  double get square => (sideA * sideB * sideC).toDouble();
  @override
  String toString() {
    return '${super.toString()} its recangle';
  }
}

class Square extends Shape {
  final side;
  Square(this.side, color) : super(color);
  @override
  double get square => (side * side).toDouble();
  int sideA() {
    return side;
  }
  int sideB() {
    return side;
  }
  @override
  String toString() {
    return '${super.toString()} it is square';
  }
}

class Circule extends Shape {
  final int radius;
  Circule(this.radius, color) : super(color);
  @override
  double get square => (2 * pi * (radius * radius)).toDouble();
  @override
  String toString() {
    
    return '${super.toString()}  it is circule' ;
  }
}

void main() {
  final Rectangle rectang = Rectangle(5, 3, 2, Colors.Blue);
  final Circule circule = Circule(9, Colors.Ping);
  final Square sqr = Square(9, Colors.Red);

  print(rectang);
  print(rectang.square);
  print(circule.color);
  print(circule.square);
  print(sqr.sideA());
  print(sqr.color);
  print(sqr.square);
}
