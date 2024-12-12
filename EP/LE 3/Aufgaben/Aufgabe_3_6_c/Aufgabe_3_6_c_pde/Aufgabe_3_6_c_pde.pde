int pointerX, pointerY;
int pointerSpeed = 3;
int pointSpeed = 2;

//points
int p1x, p1y, p1a;
boolean p1coll;
int p2x, p2y, p2a;
boolean p2coll;
int p3x, p3y, p3a;
boolean p3coll;

void setup() {
  size(200, 200);
  background(#00ff00);
  //position pointer
  pointerX = 100;
  pointerY = 180;
  rectMode(CENTER);
  // start off points under screen(better fix?)
  p1y = -50;
  p1x = int(random(5, 196));
  p2y = -10;
  p2x = int(random(5, 196));
  p3y = -1;
  p3x = int(random(5, 196));
}

void draw() {
  //clear screen
  background(#00ff00);

  // draw pointer
  noStroke();
  fill(255);
  rect(pointerX, pointerY, 30, 10);

  //reset points
  if ((p1y >= 200) || p1coll) {
    // collision
    if (p1coll) {
      // add point or sum
      p1coll = false;
    }
    p1y = int(random(0, 50));
    p1x = int(random(5, 196));
  }
  if ((p2y >= 200) || p2coll) {
    // collision
    if (p2coll) {
      // add point or sum
      p2coll = false;
    }
    p2y = int(random(0, 50));
    p2x = int(random(5, 196));
  }
  if ((p3y >= 200) || p3coll) {
    // collision
    if (p3coll) {
      // add point or sum
      p3coll = false;
    }
    p3y = int(random(0, 50));
  }

  //tick points
  p1y += pointSpeed;
  p2y += pointSpeed;
  p3y += pointSpeed;

  //draw all points
  fill(p1a);
  ellipse(p1x, p1y, 10, 10);
  fill(p1a);
  ellipse(p2x, p2y, 10, 10);
  fill(p1a);
  ellipse(p3x, p3y, 10, 10);
  
  //input management
  boolean pmove = false;
  if (keyPressed) {
    if (keyCode == LEFT && !pmove) {
      pmove = true;
      pointerX = pointerX - pointerSpeed;
      if (pointerX-15 < 0) {
        pointerX = 15;
      }
      // move to left
    }
    if (keyCode == RIGHT && !pmove) {
      pmove = true;
      pointerX = pointerX + pointerSpeed;
      // move to right
      if (pointerX+15 > 200 ) {
        pointerX = 185;
      }
    }
  } else {
  }
}
