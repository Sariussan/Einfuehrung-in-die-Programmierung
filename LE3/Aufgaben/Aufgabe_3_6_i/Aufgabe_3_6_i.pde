
int x1, y1;
int x2, y2;
boolean move1 = false;
boolean move2 = false;
int speed1 = 3;
int speed2 = 3;
int leftBoundary = -50;
int rightBoundary = 50;


void setup() {
  size(200, 200);
  background(0);
  x1 = leftBoundary;
  y1 = 50;
  x2 = leftBoundary;
  y2 = 150;

}

void draw() {
  fill(0);
  stroke(255);
  strokeWeight(2);
  background(0);
  rectMode(CENTER);
  rect(x1, y1, 150, 50, 10);
  rect(x2, y2, 150, 50, 10);

  if (move1) {
    x1 = x1 + speed1;
  }

  if (move2) {
    x2 = x2 + speed2;
  }

  if (x1 <= leftBoundary || x1 >= rightBoundary) { 
    move1 = false;
    speed1 = -speed1;
    if (x1 < 0) {
      x1 = leftBoundary;
    } else {
      x1 = rightBoundary;
    }
  }
  if (x2 <= leftBoundary || x2 >= rightBoundary) { 
    move2 = false;
    speed2 = -speed2;
    if (x2 < 0) {
      x2 = leftBoundary;
    } else {
      x2 = rightBoundary;
    }
  }
}

void mousePressed() {
  if (mouseX < x1 + 75 && (25 < mouseY ) && (mouseY < 75)) {
    if (!move1) {
      move1 = true;
    }
  }
    if (mouseX < x2 + 75 && (125 < mouseY ) && (mouseY < 175)) {
        if (!move2) {
        move2 = true;
        }
    }

}
