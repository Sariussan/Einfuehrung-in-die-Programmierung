int size = 3; // Number of squares

int squareSize = 20; // Size of each square
int startX = 10; // Starting X position
int startY = 40; // Starting Y position
int gap = 10; // Gap between squares

void setup() {
  size(200, 100);
}

void draw() {
  background(255); 
  int count = 0;
  int x = startX;
  
  while (count < size) {
    rect(x, startY, squareSize, squareSize);
    x += squareSize + gap;
    count++;
  }
}
