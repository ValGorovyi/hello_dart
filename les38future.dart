import 'dart:math';
//mnogo v comment

//1.then

// void main() async {

  // makeCoffe(1).then((result) {print(result);}); ==
  // makeCoffe(1).then((result) => print(result)); 

  //collback hell
  // makeCoffe(1).then((res) {
  //   makeCoffe(2).then((res) {
  //     makeCoffe(3); 1> 2> 3...
  //   });
  // });

  // var result;
  // makeCoffe(1).then((r) => result = r);
  // print(result); //null. bad

  // +async
  // final finalSec = makeCoffe(1).then((res) => res +2); // Instance of 'Future<int>' bad
  // print(finalSec);

  // final finalSec = await makeCoffe(1).then((res) => res +2); 
  // print(finalSec); // worked
// }

//Future - tipa 'v budushem'. 
// Future <int> makeCoffe(int numberOfCoffe) async{
//   print('worcked coffee # $numberOfCoffe');
//   final rndm = Random();
//   int numOfSec = rndm.nextInt(5);
//   //dalee - zaderzka
//   await Future.delayed(Duration(seconds: numOfSec));
//   print('final work coffe # $numberOfCoffe');
//   return numOfSec;
// }

//2. Future.catchError

// Future <int> makeCoffe(int numberOfCoffe) async{
//   throw Exception('exeption error');
//   print('worcked coffee # $numberOfCoffe');
//   final rndm = Random();
//   int numOfSec = rndm.nextInt(5);
//   //dalee - zaderzka
//   await Future.delayed(Duration(seconds: numOfSec));
//   print('final work coffe # $numberOfCoffe');
//   return numOfSec;
// }
// void main() async {
//   // final finalSec = await makeCoffe(1).then((res) => res +2, onError: (err) => print('this err>> $err')); 
//   // print(finalSec); 
//   // print('test');//err. padaet

//   // final finalSec = await makeCoffe(1).then((res) => res +2, onError: (err) => 0); 
//   // print(finalSec); // 0. kak napisano v onError
//   // print('test');// worcked. ne padaet

//   final finalSec = await makeCoffe(1)
//     .then((res) => res +2)
//     .catchError((err) { 
//       print('err >> $err');
//       return 0;
//     });
//   print('test');// worcked, ne padaet
// }

// 3. Future.whenComplete()

// Future <int> makeCoffe(int numberOfCoffe) async{
//   throw Exception('exeption error');
//   print('worcked coffee # $numberOfCoffe');
//   final rndm = Random();
//   int numOfSec = rndm.nextInt(5);
//   //dalee - zaderzka
//   await Future.delayed(Duration(seconds: numOfSec));
//   print('final work coffe # $numberOfCoffe');
//   return numOfSec;
// }
// void main() async {
//   //   final finalSec = await makeCoffe(1)
//   //   .then((res) => res +2)
//   //   .whenComplete(() { print('end worcked + ');}); // bez arg res..
//   // print('test');
// }

// 4. Future.timeout()


// Future <int> makeCoffe(int numberOfCoffe) async{
//   // throw Exception('exeption error');
//   print('worcked coffee # $numberOfCoffe');
//   final rndm = Random();
//   int numOfSec = rndm.nextInt(11);
//   await Future.delayed(Duration(seconds: numOfSec));
//   print('final work coffe # $numberOfCoffe');
//   return numOfSec;
// }
// void main() async {
//   final future = makeCoffe(1); //bez await
//   future.timeout(Duration(seconds: 4));//zdet 4 sek. potom err
//   final sec = await future;
//   print(sec);
// }

//5. Future.wait()

// Future <int> makeCoffe(int numberOfCoffe) async{
//   // throw Exception('exeption error');
//   print('worcked coffee # $numberOfCoffe');
//   final rndm = Random();
//   int numOfSec = rndm.nextInt(4);
//   await Future.delayed(Duration(seconds: numOfSec));
//   print('final work coffe # $numberOfCoffe');
//   return numOfSec;
// }
// void main() async {
//   final future1 = makeCoffe(1); //bez await
//   final future2 = makeCoffe(2); //bez await
//   final future3 = makeCoffe(3); //bez await

//   final resList =await Future.wait([future1, future2, future3]);
//   final sum = resList.fold(0, (a,b) => a + b);
//   print(resList);
//   print(sum);
// }

// 6. Future.microtask
// mickrotask vipolnitsa v pervuu ochered

void main() async {
//   Future(() => print('print future 1'));
//   Future(() => print('print future 2'));
//   Future(() => print('print future 3'));
//   Future.microtask(() => print('print mickrot 4'));

//   print('prosti pr 5');
// //prosto print > microtask > Future..

  for (var i = 0; i < 5; i++) {
    Future.microtask(() => print('microt + $i'));
  }
  print('test??');
  // test > mickrotask
}