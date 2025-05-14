//final class mozet nasledovat toka drygoi final class v etom file

abstract class Animal{
  double get age;
  //zabil () posle makeSound/ err on 15 str
  void makeSound();
}

final class Bird extends Animal{
  Bird(this.age);
  
  @override
  final double age;
  @override
  void makeSound() {
    print('tiu tio');
  }
}

// class Owl extends Bird{
//   //err
// }

//
final class Owl extends Bird{
  Owl(super.age);
}