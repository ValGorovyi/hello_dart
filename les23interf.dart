//abstract interface class -try sintaksis
//mozno ubrat slovo interface. onyasnenie v drugom file


abstract interface class Animal{
  // nyzny metody esli bez abstract

  //methody abstractnoho classa - abstractny
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

void main(){
  //esli  y Animal ybrat slovo abstract, to mozno tak
  // var anim = Animal(); // no nyzno realizovat metody v Animal
}