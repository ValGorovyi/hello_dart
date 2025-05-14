abstract interface class Animal{
  void makeSound();
  double get age;
}
class Wolf implements Animal{
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

//raznaya realixaciya odnogo i togo ze classa i est polimorfizm

//daleeprimer s num. int - eto num/ double - eto num. class odin, realizacii raznie. polimorfizm

class Calculalot {
  num sum(num a, num b) {
    num result = a + b;
    print(result.runtimeType);
    return result;
  }
}

void main() {
  final calculalot = Calculalot();
  num sum1 = calculalot.sum(2, 2);
  //   double sum2 = calculalot.sum(1.1, 1.1); err
  num sum2 = calculalot.sum(1.1, 1.1);

  print(sum1);
  print(sum2);
}