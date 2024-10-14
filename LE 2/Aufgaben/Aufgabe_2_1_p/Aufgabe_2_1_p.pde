void setup() {
  size(200, 200);
  background(200);
}

void draw() {
  background(200);
  ellipse(100, 100, 180, 180);
  float angle = (mouseY / float(height)) * TWO_PI - HALF_PI;  // angle in radians -> needed for cos and sin
  float x = 100 + cos(angle) * 80;
  float y = 100 + sin(angle) * 80;
  line(100, 100, x, y);
}
