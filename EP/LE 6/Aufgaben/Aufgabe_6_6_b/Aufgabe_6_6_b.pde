int[][] a = new int[3][5];

// Initialize the array with zeros
for (int i = 0; i < a.length; i++) {
  for (int j = 0; j < a[i].length; j++) {
    a[i][j] = 0;
  }
}

// Fill the diagonal elements with 1
for (int i = 0; i < a.length; i++) {
  a[i][i] = 1;
}

// Print the array
for (int i = 0; i < a.length; i++) {
  for (int j = 0; j < a[i].length; j++) {
    print(a[i][j] + " ");
  }
  println();
}