class IncorectNumberInStr {
  final String incorrectStr;
  IncorectNumberInStr(this.incorrectStr);
  @override
  String toString() {
    return 'its bad string without number, $incorrectStr';
  }
}

class DivisionByZero {
  @override
  String toString() {
    return 'zero in arg. its bad';
  }
}

double InSquare(double d){
  if (d < 0) {
    throw NeedMoreNumb(d);
  }
  return d * d;
}
class NeedMoreNumb{
  final double incorectNun;
  NeedMoreNumb(this.incorectNun);
  @override
  String toString() {
    return 'number must be < 0, now $incorectNun';
  }
}

double? divider(String a, String b) {
  final aValue = int.tryParse(a);
  final bValue = int.tryParse(b);
  if (bValue == 0) {
    throw DivisionByZero();
  }
  if (aValue == null) {
    throw IncorectNumberInStr(a);
  } else if (bValue == null) {
    throw IncorectNumberInStr(b);
  }

    final result = InSquare(aValue / bValue); // naidet err i vibrosit ego
    return result;

}

void main() {
  try {
    print('start try');
    final numb = divider('2', '-5');
    print(numb);
    // final nextNumb = numb + 3;
    // print(nextNumb);
  } on DivisionByZero catch(e){
    print(e);
  } on IncorectNumberInStr catch(e){
    print('$e, loh'); 
  } catch(e) {
    print('i dont now this err >> $e');
  } finally {
    print('good bye from finally');
  }
}
