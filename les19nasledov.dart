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
//extends - nasledovanie
class reperAka47 extends Human {
  reperAka47({
    required super.name,
    required super.age,
    required super.loh,
    required super.power, 
    required this.govnorep,
  });
  String govnorep;
  //mozna pereopredelit pereopredelennoe
  @override
  String toString() {
    return 'Name aka tra bra $name, yo $govnorep';
  }
  void reping() {
    print('bla bla bl');
  }
}
class Teacher extends Human {
  Teacher({
    required super.name, 
    required super.age, 
    required super.power, 
    required super.loh,
    required this.puples,
   });
  int puples; 

  //delai tak. stariy klas + 'novoe..'
  @override
  String toString() {
    return super.toString() + ' puples $puples';
  }
  void teachind() {
    print('e = mc^2');
  }
}
class Disigner extends Human {
  Disigner({
    required super.name, 
    required super.age, 
    required super.power, 
    required super.loh,
    required this.category,
    required this.leavel
  });
  String disigning() {
    return 'vzoooh! ';
  }
  @override
  String toString() {
    return disigning() + super.toString() + ' wed disign';
  }
  int category;
  String leavel;
}

void main () {
  var Ehor = Human(name: 'Ehor', age: 19, power: 2, loh: true);
  //oredelaetsa roditelskim klassom. tak mozno
  reperAka47 VitaAka = reperAka47(name: 'VitaAka', age: 40, loh: true, power: 1, govnorep: 'loh pdr');
  //mozno tekushim klassom
  Teacher Alena = Teacher(name: 'Alena', age: 34, power: 4, loh: false, puples: 19);

  Disigner Xls = Disigner(name: 'X-L-S', age: 15, power: 2, loh: false, category: 7, leavel: 'middle');
  Alena.teachind();
  VitaAka.reping();
  print(Ehor);
  print(VitaAka);
  print(Alena);
  print(VitaAka is reperAka47 ? 'yo aka' : 'loh');
  //runtimeType - tip peremennoy (Human/ Teacher..)
  print(Alena.runtimeType);
  print(Xls);
}