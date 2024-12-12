void setup() {
  println(istPrim(1));  
  println(istPrim(-5));
  println(istPrim(11));
  println(istPrim(14));
  println(istPrim(299));
}


void draw() {
}

boolean istPrim(int zahl) {
  if (zahl < 2) {
    return false;
  }
  for (int i = 2; i < zahl; i++) {
    if (zahl % i == 0) {
      return false;
    }
  }
  return true;
}
