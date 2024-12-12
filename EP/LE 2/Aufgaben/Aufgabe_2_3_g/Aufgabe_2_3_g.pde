String message = "la";

void setup() {
  println(message);
}

void draw() {
}

void mousePressed() {
  message = message + " la";
  println(message);
}
