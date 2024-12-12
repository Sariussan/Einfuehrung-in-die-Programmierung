
PVector[] position = new PVector[100];
PVector[] speed = new PVector[100];
PImage[] images = new PImage[100];
int count = 30;

void setup() {
  size(200, 200);
  // fill arrays
  for (int i = 0; i < count; i++) {
    position[i] = new PVector(random(width), random(height));
    speed[i] = new PVector(random(-1, 1), random(-1, 1));
  }
  // load images
  for (int i = 0; i < count; i++) {
    images[i] = loadImage("image.png");
  }
}

void draw() {
  background(200);
  // move and draw circles
  for (int i = 0; i < count; i++) {
    position[i].add(speed[i]);
  }
  for (int i = 0; i < count; i++) {
    //draw pimages  
    image(images[i], position[i].x, position[i].y);
  }
  // bounce off walls
  for (int i = 0; i < count; i++) {
    if (position[i].x < 0 || position[i].x > width) {
      speed[i].x *= -1;
    }
    if (position[i].y < 0 || position[i].y > height) {
      speed[i].y *= -1;
    }
  }
}
