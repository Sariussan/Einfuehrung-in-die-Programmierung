PVector move;
PVector pos;
boolean bounced;

void setup() {
  size(200, 200);
  move = new PVector(int(random(1, 5)), int(random(1, 5)));
  pos = new PVector(width/2, height/2);
  fill(#ffff00);
  textAlign(CENTER);
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
  noStroke();
  ellipse(pos.x, pos.y, 20, 20);
  stroke(#ff0000);
  line(pos.x, pos.y, pos.x + (move.x * 10), pos.y + (move.y * 10));
  text("(" + move.x + ":" + move.y + ")", width/2, 50);
}

void keyPressed() {
  if (keyCode == ' ') {
    move.set(int(random(1, 5)), int(random(1, 5)));
    pos.set(width/2, height/2);
  } else if (keyCode == UP) {
    move.x +=1;
  } else if (keyCode == DOWN) {
    move.x -=1;
  } else if (keyCode == LEFT) {
    move.y -=1;
  } else if (keyCode == RIGHT) {
    move.y +=1;
  } 
  
}
