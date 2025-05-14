class Human {
  Human(
    //syuda vse parametry
    // required - obazatelno/ error bez required. hz
    {required this.name,
     required this.age,
     required this.power}
  );
  String name;
  int age;
  //final - nelza menat
  final int power; 
}

void main() {
  var someOne = Human(name: 'Kadrol', age: 19, power: 5);

  someOne.age = someOne.age + 1;
  //someOne.power = 8; error

  print(someOne.age);
  print(someOne.name);
  print(someOne.power);

}