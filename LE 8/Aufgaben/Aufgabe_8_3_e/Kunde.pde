class Kunde {
  String vorname, nachname;
  int kundennr;
  
  Kunde(String name, int nr) {
    int index = name.indexOf(" ");
    vorname = name.substring(0, index);
    nachname = name.substring(index +1, name.length());
    kundennr = nr;
  }
}
