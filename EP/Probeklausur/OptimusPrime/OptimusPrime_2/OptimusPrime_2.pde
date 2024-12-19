float posX = 50, posY = 50;
float movX = random(-3, 3), movY = random(-3, 3);
float speed = 4;
int ballSize = 15;

void setup() {
  size(100, 100);
}

void draw() {
  //clear
  background(200);

  //animate ball
  if ((posX - ballSize/2 + movX) <= 20 || (posX + ballSize/2 + movX) >= 80) {
    //collision
    movX *= -1;
  }
  if ((posY - ballSize/2 + movY) <= 10 || (posY + ballSize/2 + movY) >= 90) {
    //collision
    movY *= -1;
  }

  //move ball
  posX += movX;
  posY += movY;
  //Debug
  //println("X: " +posX + "Y: " + posY);
  

  //draw rect
  noFill();
  rect(20, 10, 60, 80);
  //draw ball
  fill(0);
  ellipse(posX, posY, ballSize, ballSize);
}
