class Human {
  Human(
    //syuda vse parametry
    // required - obazatelno/ error bez required. hz
    {required this.name,
     required this.age,
     required this.power,
     required this.loh,
     }
  );
  String name;
  int age;
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
    return 'Name: $name, age: $age';
  }
}

void main() {
  final blackPrince = Human(name: 'BlackPrince', age: 43, power: 23, loh: false);
  final lollyBomb = Human(name: 'LollyBomb', age: 43, power: 43, loh: true);

  print(blackPrince.powerLifting(lollyBomb));
  print(blackPrince);
  blackPrince.reNaming('soska-pricesa-228');
  print(blackPrince);
  

}
