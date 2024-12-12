void setup() {
  size(200, 200);
  background(200);
}

void draw() {
  background(200);
  line(mouseX, 0, mouseX, 200);
  line(0, mouseY, 200, mouseY);
}
