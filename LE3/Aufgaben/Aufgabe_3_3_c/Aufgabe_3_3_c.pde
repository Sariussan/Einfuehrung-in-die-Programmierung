int minSize = 20, size = 20;
int speed = 3;

void setup() {
  size(200, 200);
}

void draw() {
  background(255);
  ellipse(width/2, height/2, size, size);
  size = size + speed;
  println("Current Diameter: " + size);


  if (size < minSize || size > width) {
    speed = -speed;
    println("switched");
  }
}
