void main() {
  print(pidarPoroshen(5, 4));
}

String pidarPoroshen(int a, int b) {
  return a == b ? 'parashenko pidar' : a > b ? 'yibav rashen' : 'ptn hylo';
}