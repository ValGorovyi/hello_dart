void main() {
  final listOfPeople = ['frog', 'sasha grey', 'ozzy osb'];
  if (listOfPeople.contains('taras shevchenko')) {
    print('zapovit');
  } else if (listOfPeople.contains('frg')) {
    print('kva kwa');
  } else if (listOfPeople.contains('sasha gry')) {
    print('18 +');
  } else {
    print(listOfPeople);
  }

  var temerature = 223;

  if (temerature > 4 && temerature < 40) {
    print('norm temperature');
    return;
  }
  print('apokalips');
}