void setup() {
  float[] arr = { 1.5, 3.5, 1 };
  println(average(arr));
}

void draw() {
}

float average(float[] arr){
 float sum = 0;
 for (int i = 0; i < arr.length; i++){
   sum += arr[i];
 }
  return sum / arr.length;
}
