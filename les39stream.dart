//Stream - dva vida. pozvolayet podpisatsa. async + *

// Stream<String> sendMessage() async*{
//   //no return. err
//   yield 'message 1';
//   //add zaderzky
//   //bez await vse vernet srazy
//   await Future.delayed(Duration(seconds: 2));
//   yield 'message 2';
//   await Future.delayed(Duration(seconds: 1));
//   yield 'message 3';
// }

// void main() {
//   sendMessage().listen((value) => print(value));
//   var stream = sendMessage();
// }

import 'dart:math';

Stream<String> sendMessage() async*{
  final identificator = Random().nextInt(1999);
  print('id > $identificator');
  yield 'message 1';
  //add zaderzky
  //bez await vse vernet srazy
  await Future.delayed(Duration(seconds: 2));
  yield 'message 2';
  await Future.delayed(Duration(seconds: 1));
  yield 'message 3';
}

void main() {

  //dva raznyh id, utechka pamati
  //raznie streamy
  // sendMessage().listen((value) => print(value));
  // sendMessage().listen((value) => print(value));


 //error. eto single stream. tolko 1 slyshatel
  // var stream = sendMessage();
  // stream.listen((value) => print(value));
  // stream.listen((value) => print(value));

  // asBroadcastStream. broadcast stream - stream, na kotoriy mozno podpisivatsa neskolkim
  //id odin i tot zhe
  // var stream = sendMessage().asBroadcastStream();
  // stream.listen((value) => print(value));
  // stream.listen((value) => print(value));

//kazhdiy raz sozdaetsa podpiska. bad. vipolnaetsa v fone
  var stream = sendMessage().asBroadcastStream();
  final subscription1 = stream.listen((value) => print(value));
  print('test1');
  final subscription2 = stream.listen((value) => print(value));
  //kakoy-to krivoy method otpiski po vremeni

  // Future.delayed(Duration(seconds: 5)).then((hz) {
  //   subscription1.cancel(); //otpiska
  //   subscription2.cancel();
  //   print(hz);//null hz
  // });

  //last?
  //kogda prognozirovaniy stream. posle yield poslednego znacheniya
  stream.last.then((hz) {
    print('test2');
      subscription1.cancel(); //otpiska
      subscription2.cancel();
      print(hz);//null hz
    });
}