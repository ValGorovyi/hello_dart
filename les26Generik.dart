class Storage <Generik> {
  Storage(this.value);
  //opredelenie tipa peremennoy <NazvanieTipa>
  Generik value;

  read(){
    return value;
  }
  update(Generik arg) {
    value = arg;
  }
}

void main() {
  var primer1 = Storage('govnoApteka');
  // primer1 = 2  //err
  primer1.update('govnoLohAptekaInetTsin');
  print(primer1);
  print(primer1.runtimeType);
  print(primer1.read());

  var primer2 = Storage(14);
  // primer2.update('arg'); //err
  primer2.update(543);
  print(primer2);
  print(primer2.runtimeType);
  print(primer2.read());

}