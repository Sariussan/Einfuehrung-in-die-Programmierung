int x, y;

boolean vertical = false;
int speed = 2;

void setup() {
  size(200, 200);
}

void draw() {
  background(0);
  if (vertical) {
    y += speed;
  } else {
    x += speed;
  }
  if (x > width ) {
    x = 0;
  }

  if ( y > height) {
    y = 0;
  }
  ellipse(x, y, 30, 30);
}

void mousePressed() {
  vertical = !vertical;
}
