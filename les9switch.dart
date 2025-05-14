void main() {
  final listOfPeople = ['frog', 'sasha grey', 'ozzy osb', 'taras shevchenko'];
  final someoneOfPeople = listOfPeople[listOfPeople.length - 2];

  switch (someoneOfPeople) {
    case 'frog':
      print('kwa kva');
      break;
    case 'sasha grey':
      print('+ 18');
      break;
    case 'ozzy osb': 
      print('scary little green man');
      break;
    default: 
      print('dont know this name');

  }
  
}