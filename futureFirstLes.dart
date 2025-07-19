Future<int> sum(int a, int b) {
  return Future.sync(() => a + b);
}

Future<int> example() async {
  final int sumOfInt1 = await sum(2, 3);
  print(1);
  print(sumOfInt1);

  final int sumOfInt2 = await sum(sumOfInt1, 3);
  print(2);
  print(sumOfInt2);

  final int sumOfInt3 = await sum(sumOfInt2, 3);
  print(3);

  final int sumOfInt4 = await sum(sumOfInt3, 3);
  print(4);

  print(sumOfInt3);
  print(sumOfInt4);
  return sumOfInt4;
  ;
}

Future<void> main() async {
  print('----------------1');
  print('-------------2');
  // await example(); // esli ubrat await, to zhdat ne buder vipolneno posle ostalnogo
  example().then((value) {
    print(value); // ne blokiruet potok
  });
  print('----------3');
}

// void main() {
//   var a = sum(1, 1);
//   var b;
//   var c;
//   print('$a a');
//   a.then((res) {
//     b = sum(res,1);
//     print(b);// 2

//   });
//   b.then((res) => c = sum(res,1)); // err. null
//   c.then((res) => print('$c'));

// }

// govno
// void main() {
//   Future<int> p = sum(1, 2);
//   print(p);
//   p.then((pRes) {
//     print(pRes);
//     Future<int> l = sum(pRes, 3);
//     l.then((lRes) {
//       print(lRes);
//       Future<int> j = sum(pRes, 10);
//       j.then((res){
//         print(res);
//       });
//     });
//   });
//   // Future<int> o = sum(p, 2);
//   // print(o);
//   // int j = sum(o, p);
//   // print(j);
// }

// import 'dart:io';

// void main () {
//   print(1);
//   final Future<String> readedFile = File('file.txt').readAsString();
//   print(2);
//   readedFile.whenComplete(() => print('when comp'));
//   // readedFile.then((text) => print(text)).onError((er, st)=> print(er));
//   print(3);
//   final Future demoFuture = Future.delayed(Duration(seconds: 3));
//   // demoFuture.then((onValue)=> print('$onValue  demo Future'));
//   demoFuture.whenComplete(() => print('when complete 2'));

//   final Future listF = Future.wait( [readedFile, demoFuture]); // [...text, null]
//   listF.then((res) => print(res));

// }

// import 'dart:io';

// void main() {
//   print('1');
//   print(2);
//   // sleep(Duration(seconds: 4));// programa ostanavlivaetsa. pauza vipolneniya
//   print(3);
// }
