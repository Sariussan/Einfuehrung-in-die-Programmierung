int seitenlaenge = 4;

void setup() {
  for (int i = -1; i < seitenlaenge-1; i++) { // Zeilen hochzählen
    for (int j = 0; j < seitenlaenge; j++ ) { // Spalten hochzählen
      if (j>i) {
        print("#");
      } else {
        print(".");
      }
    }
    println("");
  }
}

void draw() {
  
}
