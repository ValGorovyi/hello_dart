//const class. pole nelza izmenit. vse final. v main mozno sozdavat cheres const
class Human {
   const Human({
    required this.name,
    required this.age,
    required this.power,
    required this.loh
  });

  final String name;
  final int age;
  //final - nelza menat
  final int power; 
  final bool loh;
  //@override - perezapisat syshestvuushiy method
  @override
  String toString(){
    return 'Name: $name, age: $age';
  }

  //tyt toze nelza minat
}
//const constryctory nado dla sozdaniya const class/ chtoby norm otpravka na beckend
//eche eto proizvoditelno

void main() {
  const boba = Human(name: 'Boba', age: 1, power: 5, loh: false);

  // boba.age = 3; //error
  print(boba);
}