class Floater {

  //vars
  float x, y, geschwindigkeit;
  boolean horizontal;

  //constructor
  Floater(boolean h) {
    x = random(width);
    y = random(height);
    geschwindigkeit =  random(5);
    horizontal = h;
  }

  //methods
  void render() {
    rect(this.x, this.y, 15, 15);
    
  }

  void update() {
    //check for bounce
    if ((x + geschwindigkeit) <= width || (x + 15 + geschwindigkeit) >= width || (y + geschwindigkeit) <= height || (y + 15 + geschwindigkeit) >= height) {
      //collision
      geschwindigkeit *= -1;
    }

    //move rect
    if (horizontal) { //horizontal
      this.x += geschwindigkeit;
    } else { // vertical
      this.y += geschwindigkeit;
    }
  }
}
