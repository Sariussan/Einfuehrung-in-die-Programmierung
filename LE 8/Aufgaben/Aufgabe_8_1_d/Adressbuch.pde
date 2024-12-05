class Adressbuch {
  String[] namen;
  String[] tel;

  Adressbuch() {
    namen = new String[0];
    tel = new String[0];

    namen = append(namen, "Larry");
    namen = append(namen, "Lisa");
    namen = append(namen, "Harry");

    tel = append(tel, "111 222");
    tel = append(tel, "333 444");
    tel = append(tel, "012 345");
  }
}
