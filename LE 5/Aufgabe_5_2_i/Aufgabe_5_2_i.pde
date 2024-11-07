int current = 1;
int last = 1;

for (int i = 0; i <= 10; i++) {
  println(current);
  int temp = current;
  current = last + current;
  last = temp;
}