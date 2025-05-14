enum FavoriteStuff {
    dogsKaifWithWomen('women & cars, cars & women'),
    guitar('brin drin lalala'),
    fun('wo-hoo'),
    programing('klik - klick'),
    bigBuks('money money money'),
    kashtankaDog('kashtanka ayf');

    //konstruktor
    const FavoriteStuff(this.stuff);
    //obyavlenie kak obrashatsa k (tomy, chto tyt)
    final String stuff;

//metody enuma
    void getFavoriteStuff () {
        print(this.stuff);
    }
}
void main() {
  final pets = FavoriteStuff.kashtankaDog;
  final myMoney = FavoriteStuff.bigBuks;

//autokod. enun - tolko sushestvuyusie, no default in switch..

//   void getFavorite(FavoriteStuff favorite) {
//     switch (favorite) {
//     case FavoriteStuff.dogsKaifWithWomen:
//       print('women & cars, cars & women');
//     case FavoriteStuff.guitar:
//       print('brin drin lalala');
//     case FavoriteStuff.fun:
//       print('wo-hoo');
//     case FavoriteStuff.programing:
//       print('klik - klick');
//     case FavoriteStuff.bigBuks:
//       print('money money money');
//     case FavoriteStuff.kashtankaDog:
//       print('kashtanka ayf');
//     }
//   }
  myMoney.getFavoriteStuff();
  print(pets.stuff);
  print(pets);

}