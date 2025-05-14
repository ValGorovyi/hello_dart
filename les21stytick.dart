class Human {
  Human(
    //syuda vse parametry
    // required - obazatelno/ error bez required. hz
    {required this.name,
    //v konstruktore nelza '_' hz
     required int age,
     required this.power,
     required this.loh,
     }
     //int age, : _private = publick
     //sintaksis pzc. prisvoenie _age = age, {zdes to, chto vipolnirsa srezy pri sozdanii}
  ) : _age = age {intOfHuman = intOfHuman +1;}
  String name;
  int _age;
  final int power; 
  bool loh;
  static int intOfHuman = 0;
  //@override - perezapisat syshestvuushiy method
  @override
  String toString(){
    return 'Name: $name, age: $_age';
  }
  int get age => _age;
}

void main() {
  var Sisa = Human(name: "Sisa", age: 55, power: 1, loh: true);
  var Mops = Human(name: 'Mops Sergey Nivik', age: 87, power: 2, loh: true);

  print(Human.intOfHuman);
}