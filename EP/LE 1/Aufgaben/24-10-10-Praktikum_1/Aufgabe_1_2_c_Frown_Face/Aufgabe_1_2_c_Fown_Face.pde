void setup() {
  size(200, 200);
  surface.setTitle("Frown Face");
  surface.setResizable(true);
  surface.setLocation(100, 100);
}

void draw() {
  background(204);
  

  // Draw a Face
  //Face outline
  fill(0);
  ellipse(100, 100, 80, 80);
  
  // Eye sockets + Eyes -> left to right
  fill(255);
  ellipse(80, 90, 30, 30);
  ellipse(120, 90, 30, 30);
  //Pupils l->r again
  fill(0);
  ellipse(80, 90, 10, 10);
  ellipse(120, 90, 10, 10);

  //sad Mouth
  // noFill();
  // arc(100, 140, 40, 40, radians(180), radians(360), OPEN);

  //frown Mouth
  //ellipse or two circles and a square?
  fill(255);
  //ellipse(100, 120, 40, 20);
  ellipse(80, 120, 20, 20);
  ellipse(120, 120, 20, 20);
  noStroke();
  rect(80, 110, 40, 20);

  //Teeth
  stroke(0);
  line(70, 120, 130, 120);
  line(80, 110, 80, 130);
  line(90, 110, 90, 130);
  line(100, 110, 100, 130);
  line(110, 110, 110, 130);
  line(120, 110, 120, 130);
}
