void setup() {
  greet("Schmidt");
  greet("Schmidt", true);
  greet("Schmidt", false, "Dr.");
}

void draw() {
}

void greet(String a) {
  println("Guten Tag, Frau oder Herr " + a);
}

void greet(String a, boolean b) {
  String c;
  if (b == true) {
    c = "Frau";
  } else {
    c = "Herr";
  }
  println("Guten Tag, " + c + " " + a);
}

void greet(String a, boolean b, String d) {
  String c;
  if (b == true) {
    c = "Frau";
  } else {
    c = "Herr";
  }
  println("Guten Tag, " + c + " " + d + " " + a);
}