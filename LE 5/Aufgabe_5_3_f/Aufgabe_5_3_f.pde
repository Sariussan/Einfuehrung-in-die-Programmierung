int rings = 3;
int ringdiff = 10;

void setup() {
  size(200, 200);
  noFill();
}

void draw() {
  background(200);


  //draw rings

  for (int i = 2; i < rings +2; i += 1) { // i cant be null, because ring 0 is dependant on it
    ellipse(width/2, height/2, i * ringdiff, i * ringdiff);
  }
}
void mousePressed() {
  if (mousePressed && (mouseButton == LEFT)) {
    rings++;
  } else if (mousePressed && (mouseButton == RIGHT)) {
    rings--;
    if (rings <= 3) {
      rings = 3;
    }
  }
}
