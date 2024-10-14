void setup() {
    size(200, 200);
    background(200);
}

void draw() {
    
}

void mousePressed() {
    fill(random(256));
    textSize(random(5, 30));
    text("hallo", random(0, width), random(0, height));
}

