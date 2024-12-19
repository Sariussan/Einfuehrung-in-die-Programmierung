Auto[] autos = new Auto[5];



void Setup() {
  autos[0] = new Auto("Lidl", 12000, 8.9);
  autos[1] = new Auto("Hilti", 1000000, 14.9);
  autos[2] = new Auto("Rewe", 2500, 5.0);
  autos[3] = new Auto("DB Schenker", 12345, 12.9);
  autos[4] = new Auto("Audi", 15020, 12.9);
  
  saveAutos("data.txt");
  println(loadAutos("data.txt"))
}

void saveAutos(String n) {
  
  //ToDO: convert to Strings
  
  saveStrings(n, autos);
}

String[] loadAutos(String d) {
  String[] output = loadStrings(d);
  
  return output;
}
