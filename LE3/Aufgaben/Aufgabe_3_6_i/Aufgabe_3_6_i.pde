int x1, y1;
int x2, y2;
boolean move1 = false;
boolean move2 = false;
int speed1 = 3;
int speed2 = 3;
int leftBoundary = -50;
int rightBoundary = 50;
boolean mousePressed = false;
boolean hover1 = false;
boolean hover2 = false;


void setup() {
  size(200, 200);
  background(0);
  x1 = leftBoundary;
  y1 = 50;
  x2 = leftBoundary;
  y2 = 150;
}

void draw() {

  //detect hover over button
  if (mouseX < x1 + 75 && (25 < mouseY ) && (mouseY < 75)) {
    if (!move1) {
      hover1 = true;
    }
  } else {
    hover1 = false;
  }
  if (mouseX < x2 + 75 && (125 < mouseY ) && (mouseY < 175)) {
    if (!move2) {
      hover2 = true;
    }
  } else {
    hover2 = false;
  }



  //move rects
  if (move1) {
    x1 = x1 + speed1;
  }
  if (move2) {
    x2 = x2 + speed2;
  }

  // check if boundary is reached -> switch directions if so & stop moving & set to boundary position
  if ((x1 <= leftBoundary || x1 >= rightBoundary) && move1) {
    move1 = false;
    speed1 = -speed1;
    if (x1 < 0) {
      x1 = leftBoundary;
    } else {
      x1 = rightBoundary;
    }
  }
  if ((x2 <= leftBoundary || x2 >= rightBoundary)&& move2) {
    move2 = false;
    speed2 = -speed2;
    if (x2 < 0) {
      x2 = leftBoundary;
    } else {
      x2 = rightBoundary;
    }
  }

  //setup for rects
  fill(0);
  stroke(255);
  rectMode(CENTER);
  strokeWeight(2);
  //draw rects
  background(0);
  if (hover1) {
    strokeWeight(4);
  }
  rect(x1, y1, 150, 50, 10);
  strokeWeight(2);
  if (hover2) {
    strokeWeight(4);
  }
  rect(x2, y2, 150, 50, 10);
  strokeWeight(2);
}

//input management
void mousePressed() {
  if (hover1 && !move1) {
    move1 = true;
  }
  if (hover2 && !move2) {
    move2 = true;
  }
}
