void setup() {
  size(200, 200);
  surface.setTitle("Rainbow");
}

void draw() {
    background(0, 0, 255);
    noStroke();
    color[] rainbow_arr = { color(255, 0, 0), color(255, 191, 0), color(255, 255, 0), color(0, 0, 255) };    //Rainbow colors
    int arcsize = 200;
    //Iterate over array to create rainbow
    for (color c : rainbow_arr) {
        fill(c);
        arc(100, 200, arcsize, arcsize, radians(180), radians(360), PIE);
        arcsize -= 25;
    }
}
