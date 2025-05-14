void main() {
  final listOfPeople = <String>['frog', 'sasha grey', 'ozzy osb', 'taras shevchenko'];
  String accum = 'gusi libidi';

// error
  // for (var i = 0; i < 9; i++) {
  //   print(listOfPeople[i]);
  // }

  for (var i = 0; i < listOfPeople.length; i++) {
    listOfPeople[i] = accum;
    print(listOfPeople[i]);
  }

accum = 'pitro parashenko';

  for (int i = 0; i < listOfPeople.length; i++) {
    // worcked
    if (i == 2) {
      accum = 'ptn hlo';
    }
    listOfPeople[i] = accum;
  }
  print(listOfPeople);

  for (var someone in listOfPeople) {
    // no worcked

    someone = 'max paravoz';
    print(someone);
  }
  print(listOfPeople);
}