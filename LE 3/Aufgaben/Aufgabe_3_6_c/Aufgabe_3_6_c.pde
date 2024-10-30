int pointerX, pointerY;
int pointerSpeed = 5;

void setup() {
    size(200, 200);
    background(#00ff00);
    //position pointer
    pointerX = 100;
    pointerY = 180;
    rectMode(CENTER);
}

void draw() {
    //clear screen
    background(#00ff00);
    // draw pointer
    noStroke();
    rect(pointerX, pointerY, 30, 10);

}

void keyPressed() {
    if (keyCode == LEFT) {
        pointerX = pointerX - pointerSpeed;
        if (pointerX-15 < 0) {
            pointerX = 15;
        }
        // move to left
    }
    if (keyCode == RIGHT) {
        pointerX = pointerX + pointerSpeed;
        // move to right
        if (pointerX+15 > 200 ) {
            pointerX = 185;
        }
    } 
    fill(255);
    //rect(pointerX, pointerY, 30, 10);

}
