// luchse be late
import 'dart:math';
//late - oznachaet chto konstanta budet inicializirovana potom
class User {
  User({required this.height, required this.weight}) {
    //esli ne proinicializirovAT tyt, to error, kod pal
    bmi = weight / pow(height, 2);
  }
  final double height;
  final double weight;

  late final double bmi;
  // lychshe tak
  // double? bmi; 
}

void main() {
  final user = User(height: 179, weight: 67);

  print(user.bmi);
  // print(user.bmi?)
}