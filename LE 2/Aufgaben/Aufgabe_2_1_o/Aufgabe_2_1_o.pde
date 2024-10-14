void setup() {
  size(200, 200);
  background(200);
  noFill();
}

void draw() {
  background(200);
  arc(100, 100, 180, 180, 0, radians(mouseX/2 * 0.01 * 360));
}
