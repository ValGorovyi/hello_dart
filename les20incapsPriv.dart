//import pishut tak
import 'les20incapsPub.dart';

void main() {
  var BarbieKent = Human(name: 'BarbieKent', age: 32, power: 1, loh: true);

  print(BarbieKent);
  BarbieKent.birthday();
  print(BarbieKent.getAge());

  // BarbieKent._age = 43; error
}