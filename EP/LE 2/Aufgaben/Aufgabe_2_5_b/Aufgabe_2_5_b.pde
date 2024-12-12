void setup() {
  size(200, 200);
}

void draw() {
  background(200);
  fill(255);
  ellipse(mouseX, mouseY, 30, 30);
  fill(0);
  ellipse(width - mouseX, height - mouseY, 30, 30);
}
