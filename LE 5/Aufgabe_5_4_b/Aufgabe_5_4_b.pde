int zeilen = 3;
int spalten = 5;

for(int i = 0; i < zeilen; i += 1) {
  String line = "";
  for(int j = 0; j < spalten; j += 1) {
    line = line + "#";
  }
  println(line);
}
