int x1, y1;
int x2, y2;
int x3, y3;


void setup() {
    size(200, 200);
}

void draw() {
    background(200); 
    line(x1, y1, x2, y2);
    line(x2, y2, x3, y3);

    //every tick:
    // y stays, x animieren:
    x1, x2, x3 -= -1;

    //if one point hits left side (-x) to right(+ value to make mountain flow) ->
    if (x1 <= 0) {
        y3 = random(0, height+1);
        x3 = width + random(0, 100);
    } else if (x2 <= 0) {
        y1 = random(0, height+1);
        x1 = width + random(0, 100);
    } else if (x3 <= 0) {
        y2 = random(0, height+1);
        x2 = width + random(0, 100);
    }
}
