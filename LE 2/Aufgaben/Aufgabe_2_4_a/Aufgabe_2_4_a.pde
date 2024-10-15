int x = 0;

void setup() {
  size(200, 200);
  background(200);
  
  ellipse(x, 50, 40, 40);
}

void draw() {
  
}

void mousePressed() {
  background(200);
  x+=5;
  ellipse(x, 50, 40, 40);
}
