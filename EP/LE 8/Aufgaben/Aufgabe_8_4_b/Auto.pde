class Auto {
  String marke;
  String farbe;
  Kunde besitzer;

  Auto(String m, String f, Kunde k) {
    marke = m;
    farbe = f;
    besitzer = k;
  }
  
  void beschreibe() {
    println(besitzer.name + " aus " + besitzer.adresse +
    " hat einen " + marke + " in " + farbe);
  }
  
}
