int[][] a = {
  {4, 0, 2, 44},
  {3, 20, 33, -4},
  {12, -30, 6, 110}
};

int sum = 0;

for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < a[i].length; j++) {
        sum = sum + a[i][j];
    }
    println("Sum after row " + i + ": " + sum);
}
