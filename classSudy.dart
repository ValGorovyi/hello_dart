// import 'dart:math';

class Master {
  final String name;
  final int rang;
  final int power;
  final String id;
  final List<String> fiends;
  final bool git = false;
  final int age;
  int? ramdom = 92; // mozno null
  Master(this.name, this.rang, this.power, this.id, this.age, this.fiends,
      this.ramdom);
  double middleName() {
    if (fiends.isEmpty) {
      return 0;
    }
    return fiends.toString().length / fiends.length;
  }
  @override
  String toString() {
    return '$name, $age, power $power';
  }
  @override // perezapisat operator dla sravneniya. wow
  operator == (el) => el is Master && 
  el.name == name && el.rang == rang && el. power == power &&
  el.id == id && el.fiends.toString() == fiends.toString();
}

class square {
  final int _side;
  int get height => _side;
  int get width => _side;
  // square(int side)
  //     : height = side,
  //       width = side{
  //         print('created square!'); // no wrongSq
  //       }
  square(this._side);
  @override
  String toString() {
    return 'height $height, width $height';
  }
  // square.wrongSq(this.width,this.height);
  int get ploshad => height * width;
}

void main() {
  final Master ShiFy = Master('Shi Fy', 2, 2, 'shi-fy-228', 15,
      ['flanders', 'sasha grey', 'spiderma', 'simple woomen'], 4);
  final Master Panda = Master('Panda', 8, 8, 'panda01', 12, [], null);
  final Master copyPanda = Master('Panda', 8, 8, 'panda01', 12, [], null);
  print(Panda);
  print(Panda == copyPanda);
  print(Panda.middleName());
  print(ShiFy.middleName());
  final List<Master> dremworsList = [ShiFy, Panda];

  final square sqr = square(10);
  // final wrongSqr = square.wrongSq(10,99);
  // print(wrongSqr);
  print(sqr);
  print(sqr.height);
  print(sqr.ploshad);
}
