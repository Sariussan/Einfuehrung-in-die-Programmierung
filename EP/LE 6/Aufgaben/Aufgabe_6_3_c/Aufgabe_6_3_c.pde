PVector[] speed = new PVector[10];
PVector[] location = new PVector[10];
color[] c = new color[10];
boolean[] active = new boolean[10];

void setup() {
  size(400, 400); // Set the size of the window
  for (int i = 0; i < 10; i++) {
    location[i] = new PVector(random(width), random(height));
    speed[i] = new PVector(random(-5, 5), random(-5, 5));
    c[i] = color(random(255), random(255), random(255));
    active[i] = true; 
  }
}

void draw() {
  background(255);
  for (int i = 0; i < 10; i++) {
    if (active[i]) {
      location[i].add(speed[i]);
      fill(c[i]);
      ellipse(location[i].x, location[i].y, 10, 10);
    }
  }
  for (int i = 0; i < 10; i++) {
    if (location[i].x < 0 || location[i].x > width) {
      speed[i].x *= -1;
    }
    if (location[i].y < 0 || location[i].y > height) {
      speed[i].y *= -1;
    }
  }
}

void keyPressed() {
  if (key >= '0' && key <= '9') {
    int index = key - '0';
    active[index] = !active[index]; 
  }
}
