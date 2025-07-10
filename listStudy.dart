void main() {

  final Set<String> theSet = {'pahom', 'epifancev', 'nokia', 'norik', 'nokia', 'sport', 'morfini'};
  final Set<String> theSetCopy = {'pahom', 'epifancev', 'nokia', 'norik', 'nokia', 'bol', 'k-pop'};
  final diffOfSetCopy = theSetCopy.difference(theSet);
  final diffOfSet = theSet.difference(theSetCopy);
  print(diffOfSet);
  print(diffOfSetCopy);
  // final unionOfSet = theSetCopy.union(theSetCopy);
  // print(unionOfSet);
  // final intersOfSet = theSet.intersection(theSetCopy);
  // print(intersOfSet);
  // print(theSet); // ynikalniy
  // print(theSet.contains('hetfild'));
  // theSet.add('dart');
  // print(theSet);




  // final Map<String, String> theMapCopy = {
  //   'viney pooh': 'opel',
  //   'shrek': 'mecedes',
  //   'yanokovich': 'bmw',
  //   'boba': 'mazda',
  //   // 'yanokovich': 'reno',
  //   'baks baney': 'bmw'
  // };
  // print(theMapCopy.length);
  // final Map<String, String> theMap = {
  //   'viney pooh': 'opel',
  //   'shrek': 'mecedes',
  //   'yanokovich': 'bmw',
  //   'boba': 'mazda',
  //   // 'yanokovich': 'reno',
  //   'baks baney': 'bmw'
  // };
  // print(theMap['jimy hendrix']); // null. not err
  // print(theMap['boba']);
  // print(theMap.containsKey('boba')); // containsKey - deshovaya operatsiya
  // print(theMap.containsKey('spiderman'));
  // print(theMap == theMapCopy); // FALSE



  // final List<int> exampleList = [1, 2, 3, 4, 5, 1];

  // final mapL = exampleList.map((el) => el +3).toList();
  // print(mapL); // new list
  // print(exampleList);

  // print(exampleList.join('  '));

  // final e =exampleList.every((el) => el % 2 == 1);
  // print(e); // false
  // print(exampleList);

  // exampleList.shuffle();
  // print(exampleList); // randomniy poradok
  // exampleList.sort();
  // print(exampleList);

  // print(exampleList.lastIndexOf(1));

  // final exCopy = [
  //   1,
  //   2,
  //   3,
  //   4,
  //   5,
  // ];
  // print(exCopy == exampleList); // fals

  // print(exampleList.reversed);
  // print(exampleList);

  // exampleList.insert(0, 10);
  // print(exampleList);

  // print(exampleList.indexWhere( (elem) => elem == 0)); // elem < 0 error

  // final List resOfIdOf = [];
  // resOfIdOf.add(exampleList.indexOf(2)); // worcked
  // resOfIdOf.add(exampleList.indexOf(100));
  // print(resOfIdOf);

  // exampleList.fillRange(0, 3, 0);
  // final q = exampleList.getRange(3,2);// error)
  // print(q);
  // print(exampleList);

  // final w = exampleList.cast<num>(); // string err
  // print(exampleList[0].runtimeType); // int
  // print(w[0].runtimeType);
  // print(exampleList.runtimeType);
  // exampleList.addAll([1,2,3,]); // [!!!]
  // print(exampleList);
  // exampleList.add(2);
  // print(exampleList);

  // final w = [[[1]],];
  // print(w.single); // vivodit perviy elem esli dlinna 1
  // print(exampleList.reversed.toList().runtimeType); // list<int>
  // print(exampleList); // started list

  // // error
  // final List exampleList = [];
  // print(exampleList.first);
  // print(exampleList.last);

  // final List<List<num>> listAny = [
  //   [01],
  //   [02],
  //   [03],
  //   [04],
  //   [05],
  //   [06],
  //   [07],
  //   [08],
  // ];

  // print(listAny.runtimeType);
}
