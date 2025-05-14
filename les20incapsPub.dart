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
  ) : _age = age;
  String name;
  // _ - opredelit privatnost
  int _age;
  //final - nelza menat
  final int power; 
  bool loh;
  void overWriteLoh() {
    this.loh = !this.loh;
  }
  void reNaming(String newName) {
    this.name = newName;
  }
  bool powerLifting(Human otherHuman) {
    return this.power > otherHuman.power;
  }

  //@override - perezapisat syshestvuushiy method
  @override
  String toString(){
    return 'Name: $name, age: $_age';
  }
  birthday() {
    _age = _age+1;
  }
  // getter - daet distup k _private
  String getAge() {
    return 'I am $_age';
  }
  // String get age => 'i am $_age'

  // String get getAge => 'i am $_age'; error. getter age == age, a ne getAge

  // v uroke tak
  int get age => _age;
  // set age(int value) => _age = value;
}

void main() {
  var Barbie = Human(name: 'Barbie', age: 100, power: 2, loh: true);

  print(Barbie);
  //ne inkapsulirovano. bad
  //v etom fayle mozno cheres _. v drugih faylah - net
  Barbie._age = 3;
  print(Barbie);
}