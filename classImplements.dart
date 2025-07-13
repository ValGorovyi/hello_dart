abstract class ItemsWidthWeight {
  final double weight;
  ItemsWidthWeight(this.weight);
}

abstract class Dishes {
  void fill();
  void put();
}

abstract class ID {
  final String id;
  ID(this.id);
}

class Cup implements Dishes, ID, ItemsWidthWeight {
  final double weight; // int -error
  final id;
  Cup(this.weight, this.id);
  @override
  void put() {
    print('put cup');
  }

  @override
  void fill() {
    print('fil cup');
  }
}

class Table implements ID, ItemsWidthWeight {
  final double weight;
  final id;
  Table(this.weight, this.id);
}

class Knife implements Dishes, ID, ItemsWidthWeight {
  final id;
  final double weight;
  Knife(this.weight, this.id);
  @override
  void put() {
    print('put knife');
  }

  @override
  void fill() {
    print('fil knife');
  }
}

void main() {
  final knife = Knife(13, 'knif123');
  final cup = Cup(622, 'cup01');
  final Table table = Table(123, 'table321');

  final List<ItemsWidthWeight> listOfSome = [Cup(622, 'cup01'), cup, knife, table];
  double sumWeightOfItems = 0;
  for (var element in listOfSome) {
    sumWeightOfItems += element.weight;
  }
  print(sumWeightOfItems);
  cup.fill();
  knife.put();
  // print(knife.put());//err
  print(knife.put); // void function put=> ...
}
// typoe obyasnenie
// implements ne nasledyen znacheniya i funktsional classa. tolko nazvaniya, kotorye dochernemy nuzhno realizovat. tip dannih sohranen