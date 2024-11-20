int rings = 3;
int ringsize = 25;

void setup() {
  size(200, 200);
  noFill();
}

void draw() {
  background(200);
  for(int i = 1; i < rings +1; i += 1) { // i cant be null, because ring 0 is dependant on it
    ellipse(mouseX, mouseY, i * ringsize, i * ringsize);
  }
}
