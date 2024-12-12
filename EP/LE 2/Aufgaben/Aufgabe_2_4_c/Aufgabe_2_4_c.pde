void setup() {
  size(200, 200);
}

void draw() {
  background(0);
    
  float angle = float(frameCount)/20;
  float x = 100 + cos(angle) * 80;
  float y = 100 + sin(angle) * 80;
  fill(220, 220, 0);
  ellipse(x , y, 10, 10);
}
