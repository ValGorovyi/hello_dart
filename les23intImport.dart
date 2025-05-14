import 'les23interf.dart';
//pochemy extends, a ne implements

//ne interface - mozno nasledovat (extends) v etom file. no mozno implemetn

abstract interface class Bird implements Animal{
  static String abc = 'abc'; //ne prinato static v interface. is no try/ try in class
}

// abstract class Bird extends Animal{
//  //err
// }