// class S {}
Gen sum<Gen extends num>(Gen a, Gen b) {
  // final List<S> li = [];
  return (a + b) as Gen;
}

class ListStakcMidificator<GenericType> {
  List<GenericType> LGT = [];
  void pushMethod(GenericType a) {
    LGT.add(a);
  }

  GenericType popAndPrintMethod() {
    print(LGT[LGT.length - 1]);
    return LGT.removeLast();
  }

  @override
  String toString() {
    return LGT.toString();
  }
}

void main() {
  final int resOfSumInt = sum<int>(2, 3);
  print(resOfSumInt);

  final strList = ListStakcMidificator<String>();
  strList.pushMethod('qwe');
  strList.pushMethod('ert');
  strList.pushMethod('tyui');
  // strList.pushMethod(44);
  print(strList);

  final l = strList.popAndPrintMethod();
  print('$l: ${strList.toString()}');

  final numList = ListStakcMidificator<num>();
  numList.pushMethod(43);
  numList.pushMethod(1);
  // numList.pushMethod('a'); // err
  numList.popAndPrintMethod();
  numList.popAndPrintMethod();
  // numList.popAndPrintMethod(); // err list [] without elements
}
