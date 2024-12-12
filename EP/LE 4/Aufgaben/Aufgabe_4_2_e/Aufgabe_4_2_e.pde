PVector move;
PVector pos;
boolean bounced;

void setup() {
  size(200, 200);
  move = new PVector(int(random(1, 5)), int(random(1, 5)));
  pos = new PVector(width/2, height/2);
  fill(#ffff00);
}

void draw() {

  //general movement
  pos = pos.add(move);
  bounced = false;

  // wall bounce
  if (pos.x <= 10 || pos.x >= 190 ) {
    move.x = move.x * -1;
    bounced = true;
  }
  if (pos.y <= 10 || pos.y >= 190) {
    move.y = move.y * -1;
    bounced = true;
  }
  //Mouse collision
  if (!bounced) {
    
  }

  background(0);
  //draw ball
  ellipse(pos.x, pos.y, 20, 20);
}

void keyPressed() {
  move.set(int(random(1, 5)), int(random(1, 5)));
  pos.set(width/2, height/2);
}
