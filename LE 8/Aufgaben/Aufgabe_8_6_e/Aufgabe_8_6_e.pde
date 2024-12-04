void setup() {
  Auto[] autos = new Auto[3];
  autos[0] = new Auto(true, false);
  autos[1] = new Auto(false, false);
  autos[2] = new Auto(true, true);
  tuevCheck(autos);
  // Hier alle Autos auf die Konsole ausgeben
  // print object id for identification
  for(int i = 0; i < autos.length; i++) {
    println("Auto: " + autos[i] + " -- TÜV: " + autos[i].tuev);
  }
}

// Hier Ihre Funktion tuevCheck
void tuevCheck(Auto[] a) {
  for(int i = 0; i < a.length; i++) {
    if(a[i].motor && a[i].licht) {
      a[i].tuev = true;
    } else {
      a[i].tuev = false;
    }
  }
}
