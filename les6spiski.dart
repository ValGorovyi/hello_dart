void main() {
  final students = <String>['oleg', 'andry', 'sasa', ];
  List<int> age = [1,2,4,];

  students.add('valueAdd');
  print(students);
  students.remove('oleg');
  print(students);
  students.removeAt(0);
  final zeroSt = students[0];

  students[1] = 'ska';

  students.addAll(['govno', 'js']);

  final whereNoMap = students.where((element) => element == 'js').toList();
  print(whereNoMap);

  print(students.contains('oleg'));
  print(students.indexOf('jss'));
  print(students.length);
  print(zeroSt);
  print(age);
  students.clear();
  print(students);
}