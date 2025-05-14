void main() {
  int a = 3;
  double b = 3.33;

 //yavnoe priobrazovanie typov
  double c = a.toDouble() + b;
  print(c);
  print(c.runtimeType);

  // neyavnoe priobrazovanie
  double e = c + a as double;

  print(e);
  print(e.runtimeType);

  //error. no potom, pri zapuske
  bool f = true;
  // double cf = c + (f as double); //error
}

double boolToDouble(bool value) {
  if (value) {
    return 1;
  }
  return 0;
}