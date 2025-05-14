//v staroy versii vse moglo byt null. nuzno bilo if(== null){..}

void main(){
  String? nullable;
  // print(nullable); // staryi dart - null. seychas - error
  // print(nullable.substring(0,2)); // v staroi versii ne pokazalo err. kod upal vo vrema ispolneniya. seychas - err

  // if(nullable != null) {  //seychas - err
  // }
  if (nullable == null) { //bad
    print('nulll');
  }

  //est smusl delat takuyu proverky esli eto otdelniy method
  var d = nullSrt();
  if (d != null) {
    ///
  }

  var st = Storage();// nullenle obj
  if (st == null) {
    ///
  }

}

String? nullSrt() {
  return null;
}
class Storage<Gen> {
  Storage({this.value});
  Gen? value;
  //error bez ?
  Gen? read() {
    return value;
  }
}