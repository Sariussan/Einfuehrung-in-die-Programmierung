void setup() {
  int[] a = {1, -5, 10, -3};
  int[] b = {-5, -3, -5};
  println(betragSumme(a));
  println(betragSumme(b));
  println();
  println(randomN(2));
  println();
  println(randomN(3));
}


void draw() {
}

int betragSumme(int[] a) {
  int result = 0;
  // iterate over a
  for (int i = 0; i < a.length; i++) {
    //make a positive if negative
    if (a[i] < 0) {
      a[i] = a[i] * -1;
    }
    //add to result
    result += a[i];
  }

  //return
  return result;
}

float[] randomN(int n) {
  float[] result = new float[n];

  //fill array
  for (int i = 0; i < result.length; i++) {
    result[i] = random(10);
  }

  //return
  return result;
}
