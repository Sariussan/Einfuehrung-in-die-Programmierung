PVector[] position = new PVector[100];
PVector[] speed = new PVector[100];
int count = 30;

void setup() {
  size(200, 200);
  // fill arrays
  for (int i = 0; i < count; i++) {
    position[i] = new PVector(random(width), random(height));
    speed[i] = new PVector(random(-1, 1), random(-1, 1));
  }
}

void draw() {
  background(200);
  // move and draw circles
  for (int i = 0; i < count; i++) {
    position[i].add(speed[i]);
  }
  for (int i = 0; i < count; i++) {
    ellipse(position[i].x, position[i].y, 10, 10);
  }
}
