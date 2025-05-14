import 'dart:isolate';

// void main(){
//   Isolate.spawn(mathOperation, 'Val done');
// }
// //func dolzna bit na etom yrovne
// void mathOperation(String args) {
//   print('go isolate! $args');
// }

// void main() async{
//   final recivePort = ReceivePort();

//   Isolate.spawn(mathOperation, [10, recivePort.sendPort]);
// berem result iz izolata
//   final resOfIsolMath = await recivePort.first;

//   print(resOfIsolMath);
// }

// void mathOperation(List<Object> args) {
//   final argNumber = args[00] as int;
//   final sendPort = args[01] as SendPort;

//   final resultNumber = argNumber * argNumber;
//   sendPort.send(resultNumber);
//   // return number; err
// }

// void main() async{
//   final recivePort = ReceivePort();

//   Isolate.spawn(mathOperation, [10, recivePort.sendPort]);
//   final resOfIsolMath = await recivePort.first;

//   print(resOfIsolMath);
// }

// void mathOperation(List<Object> args) {
//   final argNumber = args[00] as int;
//   final sendPort = args[01] as SendPort;
//   // /imitaciya zaderzki
//   Future.delayed(Duration(seconds: 4)).whenComplete(() {
//     final resultNumber = argNumber * argNumber;
//     sendPort.send(resultNumber);
//   });
//   // return number; err
// }

//neskilko isolatov. interesno pzc


// // Future<void> main??
void main() async{
  final recivePort = ReceivePort();
  final isolateCoundList = 4;
  // sozdayem massiv ot 1 do 20
  final numbersList = List.generate(20, (i) => i +1);
  final stepByNumsList = numbersList.length ~/ isolateCoundList;
  final resOfAllIsolList = <int>[];
  int completedIsolate = 0;


  for (var i = 0; i < isolateCoundList; i++) {
    final subListForIsolate = numbersList.sublist(i * stepByNumsList, (i + 1) *stepByNumsList);
    print(subListForIsolate);
    Isolate.spawn(mathOperation, [subListForIsolate, recivePort.sendPort]);
    // await recivePort.listen((data) {
    //   resOfAllIsolList.addAll(data);
    // });
  }
  await for(final data in recivePort){
    resOfAllIsolList.addAll(data as List<int>);
    completedIsolate +=1;
    if(completedIsolate == isolateCoundList) {
      recivePort.close();
      resOfAllIsolList.sort();
      
      print('end \/n $resOfAllIsolList');
      break;
    }
  }

  // Isolate.spawn(mathOperation, [10, recivePort.sendPort]);
  // final resOfIsolMath = await recivePort.first;

  // print(resOfIsolMath);
}

void mathOperation(List<Object> args) async {
  final argNumbers = args[00] as List<int>;
  final sendPort = args[01] as SendPort;
  final resultList = <int>[]; 
  await Future.delayed(Duration(seconds: 4));
  for (var numb in argNumbers) {

    final resultNumber = numb * numb;
    resultList.add(resultNumber);
    print(resultNumber);
  
  }
      sendPort.send(resultList);

}