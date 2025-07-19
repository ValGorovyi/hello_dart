import 'dart:async';

Stream<int>? stream;
StreamController<int> controller = StreamController(
  sync: true,
); // delayet sinhronnim
StreamSubscription<int>? streamSubscription1;
// StreamSubscription<int>? streamSubscription2;

void main() {
  streamSubscription1 = controller.stream.listen((event) {
    print(event);
  });
  controller.add(1);
  controller.add(1);
  controller.add(1);
  controller.add(1);

  print(33333333);
  controller.add(1);
  controller.add(1);
  controller.add(1);

  print(6666666666);
  controller.add(1);
  controller.add(1);

  print(999999999999);
  Future.delayed(Duration(seconds: 4), (() {
    streamSubscription1?.cancel();
    controller.close();
  }));
}

// void main() {
//   print('ONE');
//   controller.add(1);
//   controller.add(2);
//   controller.add(3);
//   print('TWO');
//   stream = controller.stream.asBroadcastStream();
//   streamSubscription1 = stream?.listen((ev) {
//     print(ev);
//   });
//   streamSubscription2 =stream?.listen((eve) {
//     print(eve);
//   });
//   controller.add(4);
//   controller.add(5);
//   controller.add(6);

//   print('333333');
//   Future.delayed(Duration(seconds: 4), () {
//     streamSubscription1?.cancel();
//     controller.close();
//     // controller.add('error');// err
//   });
// }

// Stream<int>? stream;
// StreamSubscription<int>? streamSubscription;
// StreamSubscription<int>? streamSubscription1;
// StreamSubscription<int>? streamSubscription2;

// void main() {
//   print(11111);
//   stream = Stream.periodic(
//     Duration(seconds: 1),
//     (timeTick) => timeTick,
//   ).asBroadcastStream();
//   // stream?.asBroadcastStream();// error
//   print(22222);
//   streamSubscription1 = stream?.listen((event) {
//     print(event);
//   });
//   streamSubscription2 = stream?.listen((event) {
//     print(event);
//   });

//   print(33333);
//   Future.delayed(Duration(seconds: 10), () {
//     streamSubscription1?.cancel();
//     streamSubscription2?.cancel();
//   });
// }

// void main() async{
//   print('one');
//   stream = Stream.periodic(Duration(seconds: 1), (momentTick) => momentTick);
//   print('two');

//   // streamSubscription = stream?.listen((event) {
//   //   print(event);
//   //   // if (event == 5) {
//   //   //   // streamSubscription?.cancel();// worcked
//   //   // }
//   // });
//   // Future.delayed(Duration(seconds: 3), () {
//   //   streamSubscription?.pause();
//   // });
//   // Future.delayed(Duration(seconds: 5), () {
//   //   streamSubscription?.resume();
//   // });

//   await for(var item in stream!) {
//     print(item);  // FOREVER. NOT FINISHED
//   }
//   print('three');
//   Future.delayed(Duration(seconds: 14), () {
//     streamSubscription?.cancel();
//   });
// }
