int highlight = 0;

void setup() {
    size(200, 200);
}

void draw() {
    background(0);

    //calc highlight
    if (frameCount % 10 == 0) {
        highlight = (highlight + 1) % 10;
    }
    //draw all lines
    stroke(80); 
    for (int i = 0; i < 10; i++) {
        line(60, 30 + i * 15, 140,30 + i * 15);
    }
    // draw highlight
    stroke(255);
    line(60, 30 + highlight * 15, 140, 30 + highlight * 15);
}
