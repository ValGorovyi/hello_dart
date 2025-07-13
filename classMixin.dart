mixin Animals {
  void voice() {
    print('it is a voice animal');
  }
}

mixin Mechanism {
  String? model;
  void repair() {
    print('it is repair');
  }
}

mixin Flyable {
  void fly() {
    print('im flying now');
  }
}

mixin Test1M {
  void test() {
    print('test 111');
  }
}
mixin Test2M {
  void test() {
    print('test 222');
  }
}

// posledniy opredilit kak bydet rabotat dybliryyishiy method
class Duck with Test2M, Test1M, Animals, Flyable {}

class AirCar with Mechanism, Flyable {
  AirCar(m) {
    model = m;
  }
  fly() {
    print('its fly mechanizm');
  }
}

void main() {
  final AirCar bootdaCar = AirCar('Bootda Mobile');
  final Duck pirpleDuck = Duck();
  pirpleDuck.fly();
  bootdaCar.fly();
  pirpleDuck.test();
}
