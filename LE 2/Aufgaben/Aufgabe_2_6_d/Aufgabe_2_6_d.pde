int flyHeight = 100;

void setup() {
  size(200, 200);
}

void draw() {
  background(200);
  int x = frameCount % width;
  ellipse(x, flyHeight, 30, 30);
}

void mousePressed() {
  flyHeight += 5;
}

void keyPressed() {
  flyHeight -= 5;
}
