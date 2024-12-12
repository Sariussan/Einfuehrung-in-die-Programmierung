ArrayList<PVector> points;

void setup() {
  size(400, 400);
  points = new ArrayList<PVector>();
}

void draw() {
  background(255);
  stroke(0);
  fill(0);
  
  for (int i = 0; i < points.size(); i++) {
    PVector point = points.get(i);
    ellipse(point.x, point.y, 10, 10);
    if (i > 0) {
      PVector prevPoint = points.get(i - 1);
      line(prevPoint.x, prevPoint.y, point.x, point.y);
    }
  }
}

void keyPressed() {
  if (key == BACKSPACE && points.size() > 0) {
    points.remove(points.size() - 1);
  } else if (keyCode == UP) {
    for (PVector point : points) {
      point.y -= 1;
    }
  } else if (keyCode == DOWN) {
    for (PVector point : points) {
      point.y += 1;
    }
  } else if (keyCode == LEFT) {
    for (PVector point : points) {
      point.x -= 1;
    }
  } else if (keyCode == RIGHT) {
    for (PVector point : points) {
      point.x += 1;
    }
  }
}

void mousePressed() {
    //if collsion with existing point, remove it
    for (int i = 0; i < points.size(); i++) {
      PVector point = points.get(i);
      if (dist(mouseX, mouseY, point.x, point.y) < 10) {
        points.remove(i);
        return;
      }
    }
    //otherwise, create a new point
    points.add(new PVector(mouseX, mouseY));
}
