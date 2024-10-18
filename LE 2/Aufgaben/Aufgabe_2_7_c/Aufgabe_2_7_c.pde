
void setup() {
  size(200, 200);
  textMode(CENTER);
  textSize(30);

}

void draw() {
  background(200);
  text(frameCount/60, 100, 100);
}

void mousePressed() {
  frameCount = 0;
}
