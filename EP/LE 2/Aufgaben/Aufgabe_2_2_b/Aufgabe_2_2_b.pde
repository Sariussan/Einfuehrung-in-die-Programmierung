void setup() {
  size(200, 200);
}

void draw() {

}

void mousePressed() {
  fill(random(256));
  rectMode(CENTER);
  rect(random(201), random(201), random(5, 21), random(5, 21));
}
