PVector foo = new PVector();

void setup() {
  size(400, 400);
  foo.x = random(0, width);
  foo.y = random(0, height);
}

void draw() {
  background(255);
  ellipse(foo.x, foo.y, 20, 20);

  if (keyPressed) {
    if (key == 's') {
      save();
    }
    if (key == 'd') {
      saveCsv();
    }
    if (key == 'l') {
      load();
    }
    if (key == 'k') {
      loadCsv();
    }
  }
}

void mousePressed() {
  foo.x = random(0, width);
  foo.y = random(0, height);
}

void save() {
  String[] pos = {""+foo.x, ""+foo.y};
  saveStrings("position.txt", pos);
}

void saveCsv() {
  String[] pos = {foo.x+","+foo.y};
  saveStrings("position.csv", pos);
}

void load() {
  String[] pos = loadStrings("position.txt");

  foo.x = float(pos[0]);
  foo.y = float(pos[1]);
}

void loadCsv() {
  String[] load = loadStrings("position.csv");

  String[] pos = split(load[0], ",");
  foo.x = float(pos[0]);
  foo.y = float(pos[1]);
}
