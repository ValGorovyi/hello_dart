void main(){
  var plus = 1;
  plus +=3;

  plus = plus + 3;
  plus = (plus / 3).toInt();

  double a = plus % 3;

  var hzTilda = 8 ~/ 3;

  bool d = a == plus;

  print(d);
  print(hzTilda);
  print(a);
  print(plus);
}