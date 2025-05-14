//konstrykcii s ? mogut bit null. bez - ne mogut


void main(){
  String? myBeNullSrt;
  print(myBeNullSrt);

  int? myBeNullInt;
  print(myBeNullInt);
  myBeNullInt = 12;
  myBeNullInt = null;
  //s ne nulluble type tak nelza
  // int t = null; // error
  var nullStorage = Storage<String>();
  nullStorage.updatesStorage('gg');
  print(nullStorage);
  print(nullStorage.read());

  nullStorage.updatesStorage(null);


}
  //takoe mozno delat i s Generick
  class Storage<G> {
    // without {} error
    Storage({this.value});
    G? value;
    G? read() {
      return value;
    }
    // bez ? null nelza peredat
    void updatesStorage(G? newValue) {
      this.value = newValue;
    }
  }