class Human {
    Human({
    required this.name,
    required this.age,
    required this.power,
    required this.loh
  });

  final String name;
  int age;
  void birthday() {
    this.age += 1;
  }
  //final - nelza menat
  final int power; 
  final bool loh;
  @override
  String toString(){
    return 'Name: $name, age: $age';
  }

//copyWith dayet vozmoznost v novom obiecte scopirivat svoystva starogo objecta. copiya, ne ssilka
  Human copyWith({
    String? name,
    int? age,
    int? power,
    bool? loh
  }) {
    return Human(
      name: name ?? this.name,
      age: age ?? this.age, 
      power: power ?? this.power, 
      loh: loh ?? this.loh);
  }
}

void main() {
  final baby = Human(name: 'baby', age: 3, power: 4, loh: true);
  final kipka = baby.copyWith(name: 'kipka'); // const - error

  print(baby);
  print(kipka);

  baby.birthday();

  print(baby);
  print(kipka);

  kipka.birthday();

  print(baby);
  print(kipka);
  //menayetsa tolko class, y kotorogo vizvan method

}