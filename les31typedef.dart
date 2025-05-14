
typedef SumInt = int Function(int, int);
//mozno tak. tipa yprostil
typedef str = String;
// pidar code
// typedef String = int;
void main() {
  //opesanie typa
  //int Function(int, int)
  //ctoby ne pisat - typedef
  // int Function(int, int) sumFunc = sum;

  SumInt sumFunc = sum;
  print(sumFunc(3,5));

}

int sum(int a, int b){
  return a + b;
}