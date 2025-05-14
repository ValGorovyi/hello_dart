import 'dart:math';

// void main() async{
//   int sek1 = await makeCoffe(1);//bez await err
//   int sek2 = await makeCoffe(2);
//   int sek3 = await makeCoffe(3);

//   print('sek sum ${sek1 + sek2 + sek3} ');

//   //primerno #1 > #1, #2 > #2 ...

// }
void main() {
  makeCoffe(1);
  makeCoffe(2);
  makeCoffe(3);

  print('wwwwww');
  //primerno #1, #2, #3 > 'wwww..' > #2, #3,...

}

//Future - tipa 'v budushem'. 
Future <int> makeCoffe(int numberOfCoffe) async{
  print('worcked coffee # $numberOfCoffe');
  final rndm = Random();
  int numOfSec = rndm.nextInt(5);
  //dalee - zaderzka
  await Future.delayed(Duration(seconds: numOfSec));
  print('final work coffe # $numberOfCoffe');
  return numOfSec;

}