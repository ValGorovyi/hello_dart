//abstract - znachit nelza sozdat. toka nasledovanie
abstract interface class Animal{
  //perechislayutsamethody i pola chto dolzni bit realizivany;
  void makeSound();
  //hz nafiga get
  double get age;
}
// implements - nasledyemsa on etogo interfeysa, realizyem eho method
class Wolf implements Animal{
  //required??? error
  Wolf(this.age);
  @override
  void makeSound() {
    print('auf');
  }
  @override
  final double age;
}

class Tiger implements Animal{
  Tiger(this.age);

  @override
  void makeSound() {
    print('arrr!');
  }
  @override
  final double age;

  String makePerformanceInCircle() {
    return 'tiger in circle';
  }
}

void main() {
  // var animal = Animal(); error
  final Animal wolf = Wolf(4);
  final Tiger tiger = Tiger(5);

  print(wolf.age);
  wolf.makeSound();
  tiger.makeSound();
  print(tiger.makePerformanceInCircle());
}