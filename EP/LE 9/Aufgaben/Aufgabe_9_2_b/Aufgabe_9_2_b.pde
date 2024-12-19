
void setup() {
  println(loadToIntArray("data.txt"));
}

int[] loadToIntArray(String d) {
  String[] arr = loadStrings(d);
  String[] numbers = arr[0].split(";");

  int[] output = new int[numbers.length];

  for (int i = 0; i < numbers.length; i++) {
    output[i] = int(numbers[i]);
  }
  return output;
}
