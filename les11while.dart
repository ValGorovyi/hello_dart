void main () {
    final listOfPeople = <String>['frog', 'sasha grey', 'ozzy osb', 'taras shevchenko'];
    int number = 100;

    while(number != 0) {
        number -=1;
        print(number);
    }

    //removeLast() - ydalit posledniy
    //isNotEmpty - ne pystoi
    do {
      listOfPeople.removeLast();
    } while (listOfPeople.isNotEmpty);
    print(listOfPeople);

}