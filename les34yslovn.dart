// vmesto if( != null) {///}
// str?.method()  ecli str == null, to kod ne vipolnitsa


// str!.method() ! oznachaet chto 100% ne nullable znachenie
void main() {
  String? str1 = getNullS();
  print(str1?.substring(0,1));// null. no err

  // print(str!.substring(0,1)); //error vo vrema vipolneniya

  String? str2 = getStrN(); //bez ? -err. method mozet vernut null
  print(str2!.substring(0,2)); //st
 // ne ipolzovat !
}

String? getNullS() {
  return null;
} 
String? getStrN() {
  return 'string';
} 