void setup() {
  Losmaschine lm = new Losmaschine();
  for(int i = 0; i < 5; i++) {
    println(lm.losZiehen());
  }
}
