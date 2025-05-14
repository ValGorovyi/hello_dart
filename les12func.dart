// void f() {}- no return
// String f() {return string;}
// int f() {return int;} ...

void main () {
  var testInt = squae(5);
  var testString = pidarParashenkoStringFunc(testInt);

  print(testString);
}

int squae(int number) {
  return number * number;
}

String pidarParashenkoStringFunc(int number) {
  return 'parashenko pidar $number raz';
}