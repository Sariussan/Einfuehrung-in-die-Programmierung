int x, y;
boolean move = false;
int speed = 3;
int leftBoundary = -50;
int rightBoundary = 50;


void setup() {
  size(200, 200);
  background(0);
  x = -50;
  y = 100;
}

void draw() {
  fill(0);
  stroke(255);
  strokeWeight(2);
  background(0);
  rectMode(CENTER);
  rect(x, y, 150, 100, 10);

  if (move) {
    x = x + speed;
  }

  if (x <= leftBoundary || x >= rightBoundary) { // endpunkt erreicht -> switch sides and move
    move = false;
    speed = -speed;
    if (x < 0) {
      x = leftBoundary;
    } else {
      x = rightBoundary;
    }
  }
}

void mousePressed() {
  if (!move) {
    move = true;
  }
}
