void setup() {
  size(200, 200);	
  background(200);
}

void draw() {
}

void mousePressed() {
  rectMode(CENTER);
  //rect(mouseX, mouseY, 20, 20);+
  ellipse(mouseX, mouseY, 20, 20);
}
