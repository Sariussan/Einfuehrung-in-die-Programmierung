int count = 0;
int secCounter = 0;

void setup() {
    
}

void draw() {
    // if (secCounter >= 60) {
    if (secCounter >= frameRate) {
        //reached a full second
        print(".");
        secCounter = 0;
    }
    secCounter++;
}
