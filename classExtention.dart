

void main () {
  final String exampleStringWithNum = '7';
  final int exampleInt = 9;
  print(exampleInt);
  exampleInt.toDouble;
  print(exampleInt);
  print(exampleStringWithNum);
  exampleStringWithNum.toDouble();
  print(exampleStringWithNum);
  print(exampleStringWithNum.toSyka());
}
// pri importe rabotaet ne korrektno, vs code ne podskazivaet
extension MyNameForThing on String{
  // final num= 5;// err
  double? toDouble() {
    return double.tryParse(this);
  }
  String toSyka() {
    
    return 'syka syka syk';
  }
}