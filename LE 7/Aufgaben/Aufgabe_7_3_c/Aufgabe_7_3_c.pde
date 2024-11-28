void setup() {
  println("2, 5 -> max2: " + max2(2.0, 5.0));
  println("2, 5, 6 -> max3: " + max3(2.0, 5.0, 9.0));
  println("5, 5, 2 -> max5: " + max3(2.0, 5.0, 5.0));
}

void draw() {
}

float max2(float a, float b) {
  if (a>b) {
    return a;
  } else {
    return b;
  }
}

float max3(float a, float b, float c) {
  return max2(max2(a, b), c);
}
