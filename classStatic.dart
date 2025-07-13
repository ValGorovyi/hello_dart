class Car {
  int currencySpeed = 0;
  void printCurrencySpeed() {
    print(currencySpeed);
  }
  static void maximumPermittedSpeed(String name) {
    print(name + ', maximum permited Speed 245');
  }
  static int maximumPosibleSpeed = 300;
  void testWithStatic() {
    // return maximumPosibleSpeed(); // err
    // return Car.maximumPosibleSpeed(); // err
  }
}

void main() {
  final renoCar = Car();
  renoCar.currencySpeed = 93;
  renoCar.printCurrencySpeed();
  // renoCar.maximumPermittedSpeed(); // err
  Car.maximumPermittedSpeed('mia');
  print(Car.maximumPosibleSpeed);
  Car.maximumPosibleSpeed = 302;
  print(Car.maximumPosibleSpeed);

}

// чтобы воспользуватся методом \ свойством не нужно инициализировать каждый раз 
//  экономит память