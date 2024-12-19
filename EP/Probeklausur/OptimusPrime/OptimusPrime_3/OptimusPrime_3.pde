Floater[] arr = new Floater[6];


void setup() {
  size(100, 100);
  background(0);
  
  
  for(int i = 0; i < arr.length; i++) {
    boolean hor;
    // create floaters
    if (i < 4) {
      hor = true;
    } else {
      hor = false;
    }
    arr[i] = new Floater(hor);
  }
}

void draw() {
  for(int i = 0; i < arr.length; i++) {
    arr[i].update();
    arr[i].render();
  }
}

void onMousePressed() {
  for(int i = 0; i < arr.length; i++) {
    //arr[i].horizontal = !horizontal;
  }
}

//he dont work
