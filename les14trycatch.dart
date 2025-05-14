void main() {
  try {
    var e = uniplementedErr();
  } catch (e) {
    print('error uniplimented ' + e.toString());
  }

  try {
    var e = exeptionErr();
  } catch (e) {
    print('exeption err ' + e.toString());
  }

  //  on catch
  try {
    //any error
    var err = exeptionErr();
    //   var err = uniplementedErr();
  } on Exception catch (e) {
    print('this exeption err ' + e.toString());
  } on Error catch (e) {
    print('this uniplemented err. is big err ' + e.toString());
  } finally {
    print('end worcked');
  }
}

void uniplementedErr() {
  //error
  throw UnimplementedError();
}

void exeptionErr() {
  throw Exception('exeptin error');
}
